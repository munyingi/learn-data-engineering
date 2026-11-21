"""Copy the exercise files into your own folder: python scripts/start.py YOUR-GITHUB-USERNAME"""

import re
import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

if len(sys.argv) != 2 or not re.match(r"^[A-Za-z0-9][A-Za-z0-9-]{0,38}$", sys.argv[1]):
    sys.exit("Usage: python scripts/start.py YOUR-GITHUB-USERNAME")
user = sys.argv[1]
for course in sorted((ROOT / "courses").iterdir()):
    src = course / "exercises"
    if not src.is_dir():
        continue
    dst = ROOT / "submissions" / user / course.name
    dst.mkdir(parents=True, exist_ok=True)
    for f in sorted(src.iterdir()):
        target = dst / f.name
        if not target.exists():
            shutil.copy(f, target)
    print(f"Ready: {dst.relative_to(ROOT)}")
print("Solve the exercises, then run: python scripts/check.py submissions/" + user)
