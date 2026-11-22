"""Check exercise answers.

Locally:
    python scripts/check.py                      # check everything in submissions/
    python scripts/check.py submissions/your-name

In a pull request (used by GitHub Actions):
    python scripts/check.py --pr --author LOGIN --files changed.txt --out result.md

SQL answers run on DuckDB with external access switched off, so a query can only
read the course tables. Python answers run in a separate process with a time limit.
"""

from __future__ import annotations

import argparse
import json
import math
import re
import subprocess
import sys
import tempfile
from pathlib import Path

import duckdb

ROOT = Path(__file__).resolve().parent.parent
SOLUTIONS = json.loads((ROOT / "checker" / "solutions.json").read_text(encoding="utf-8"))
TABLES = {
    "customers": "data/shop/customers.csv",
    "products": "data/shop/products.csv",
    "orders": "data/shop/orders.csv",
    "order_items": "data/shop/order_items.csv",
    "stations": "data/citybikes/stations.csv",
    "daily_trips": "data/citybikes/daily_trips.csv",
    "raw_orders_feed": "data/feeds/raw_orders_feed.csv",
    "payments": "data/feeds/payments.csv",
    "customer_history": "data/feeds/customer_history.csv",
    "order_events": "data/feeds/order_events.csv",
    "customer_contacts": "data/feeds/customer_contacts.csv",
    "deletion_requests": "data/feeds/deletion_requests.csv",
    "pipeline_runs": "data/ops/pipeline_runs.csv",
    "query_log": "data/ops/query_log.csv",
}
USERNAME = re.compile(r"^[A-Za-z0-9](?:[A-Za-z0-9-]{0,38})$")


def connect() -> duckdb.DuckDBPyConnection:
    con = duckdb.connect(":memory:")
    for name, path in TABLES.items():
        con.execute(f"CREATE TABLE {name} AS SELECT * FROM read_csv('{(ROOT / path).as_posix()}', header = true, sample_size = -1)")
    con.execute("SET enable_external_access = false")
    con.execute("SET lock_configuration = true")
    return con


def norm(v):
    if isinstance(v, float):
        return None if math.isnan(v) else round(v, 2)
    if isinstance(v, (int, str)) or v is None:
        return v
    return str(v)


def run_sql(con, sql: str):
    cur = con.execute(sql)
    cols = [d[0] for d in cur.description or []]
    rows = [tuple(norm(v) for v in r) for r in cur.fetchall()]
    return cols, rows


def check_sql(con, ex_id: str, sql: str) -> tuple[bool, str]:
    spec = SOLUTIONS[ex_id]
    body = "\n".join(line for line in sql.splitlines() if not line.strip().startswith("--")).strip()
    if not body:
        return False, "the file has no query yet"
    try:
        cols, rows = run_sql(con, sql)
    except Exception as e:  # noqa: BLE001
        return False, f"the query failed: {str(e).splitlines()[0][:200]}"
    exp_cols, exp_rows = run_sql(con, spec["solution"])
    if len(cols) != len(exp_cols):
        return False, f"expected {len(exp_cols)} column(s), got {len(cols)}"
    if len(rows) != len(exp_rows):
        return False, f"expected {len(exp_rows)} row(s), got {len(rows)}"
    key = lambda r: json.dumps(r, default=str)  # noqa: E731
    a, b = [key(r) for r in rows], [key(r) for r in exp_rows]
    if not spec["ordered"]:
        a.sort()
        b.sort()
    if a != b:
        return False, "the values (or their order) are different"
    return True, "correct"


def check_python(ex_id: str, code: str) -> tuple[bool, str]:
    spec = SOLUTIONS[ex_id]
    with tempfile.NamedTemporaryFile("w", suffix=".py", delete=False, encoding="utf-8") as f:
        f.write(code + "\n\n" + spec["check"] + "\n")
        path = f.name
    try:
        p = subprocess.run([sys.executable, path], cwd=ROOT, capture_output=True, text=True, timeout=30)
    except subprocess.TimeoutExpired:
        return False, "took longer than 30 seconds"
    finally:
        Path(path).unlink(missing_ok=True)
    if p.returncode == 0:
        return True, "correct"
    last = (p.stderr.strip().splitlines() or ["failed"])[-1]
    return False, last.replace("AssertionError: ", "")[:200]


def check_file(con, path: Path) -> tuple[str, bool, str]:
    ex_id = path.stem
    if ex_id not in SOLUTIONS:
        return ex_id, False, "unknown exercise name (keep the original file name, e.g. sql2-1.sql)"
    text = path.read_text(encoding="utf-8")
    if SOLUTIONS[ex_id]["kind"] == "sql":
        ok, msg = check_sql(con, ex_id, text)
    else:
        ok, msg = check_python(ex_id, text)
    return ex_id, ok, msg


def report(results: list[tuple[str, str, bool, str]], problems: list[str]) -> str:
    passed = sum(1 for r in results if r[2])
    lines = ["## Exercise check", ""]
    if problems:
        lines += ["**Please fix these first:**", ""] + [f"- {p}" for p in problems] + [""]
    if results:
        lines += [f"**{passed} of {len(results)} passed**", "", "| File | Result | Details |", "|---|---|---|"]
        for path, _, ok, msg in sorted(results):
            lines.append(f"| `{path}` | {'✅' if ok else '❌'} | {msg} |")
    elif not problems:
        lines.append("No exercise files changed in this pull request.")
    lines += ["", "_Checked automatically. Push a new commit to check again._"]
    return "\n".join(lines)


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("paths", nargs="*")
    ap.add_argument("--pr", action="store_true")
    ap.add_argument("--author")
    ap.add_argument("--files")
    ap.add_argument("--out")
    ap.add_argument("--self-test", action="store_true", help="check that every reference solution passes")
    args = ap.parse_args()
    con = connect()

    if args.self_test:
        bad = []
        for ex_id, spec in SOLUTIONS.items():
            if spec["kind"] == "sql":
                ok = check_sql(con, ex_id, spec["solution"])[0]
            else:
                ok = check_python(ex_id, spec["solution"])[0] if "solution" in spec else True
            if not ok:
                bad.append(ex_id)
        print("all solutions pass" if not bad else f"failing: {bad}")
        return 1 if bad else 0

    problems: list[str] = []
    files: list[Path] = []
    if args.pr:
        author = args.author or ""
        if not USERNAME.match(author):
            problems.append("could not read the pull request author")
        changed = [l.strip() for l in Path(args.files).read_text().splitlines() if l.strip()]
        allowed_prefix = f"submissions/{author}/"
        for c in changed:
            if c == "GRADUATES.md":
                continue
            if not c.startswith(allowed_prefix):
                problems.append(f"`{c}` is outside your folder. Only change files in `{allowed_prefix}` (and `GRADUATES.md`).")
            elif (ROOT / c).exists() and c.endswith((".sql", ".py")):
                files.append(ROOT / c)
    else:
        roots = [ROOT / p for p in args.paths] or [ROOT / "submissions"]
        for r in roots:
            files += [r] if r.is_file() else sorted([*r.rglob("*.sql"), *r.rglob("*.py")])
        if not args.paths:
            files = [f for f in files if "example" not in f.parts]

    results = []
    for f in files:
        ex_id, ok, msg = check_file(con, f)
        results.append((f.relative_to(ROOT).as_posix(), ex_id, ok, msg))
        if not args.pr:
            print(f"{'PASS' if ok else 'FAIL'}  {f.relative_to(ROOT).as_posix()}  {msg}")

    md = report(results, problems)
    if args.out:
        Path(args.out).write_text(md, encoding="utf-8")
    elif args.pr:
        print(md)
    failed = bool(problems) or any(not r[2] for r in results)
    return 1 if failed else 0


if __name__ == "__main__":
    sys.exit(main())
