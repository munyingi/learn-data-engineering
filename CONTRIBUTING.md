# How to submit your work

1. **Fork** this repository (button at the top right on GitHub).
2. Clone your fork and create your folder:
   ```bash
   git clone https://github.com/YOUR-USERNAME/learn-data-engineering.git
   cd learn-data-engineering
   pip install duckdb pandas
   python scripts/start.py YOUR-USERNAME
   ```
3. Solve the exercises in `submissions/YOUR-USERNAME/`. Check them as often as you like:
   ```bash
   python scripts/check.py submissions/YOUR-USERNAME
   ```
4. Commit, push to your fork, and open a **pull request** to this repository.
5. A check runs automatically and comments with your results. Fix anything marked ❌ and push again.
6. Finished a course? Open a second pull request adding one line to `GRADUATES.md`.

## Rules

- Only change files inside `submissions/YOUR-USERNAME/` and `GRADUATES.md`. The folder name must match your GitHub username exactly.
- Keep the original file names (`sql2-1.sql`, `py-1.py`), so the checker knows which exercise it is.
- Be kind in comments and reviews. Everyone here is learning.

Want to work privately instead? Click **Use this template** to make your own copy without opening pull requests.
