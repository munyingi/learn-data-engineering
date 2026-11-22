# Privacy by Design

Five short lessons on personal data, pseudonymisation, safe aggregates, deletion requests and a deletion plan. Read each lesson on the website, then solve the exercises here.

Course page: https://community.samwelmunyingi.org/courses/privacy-by-design/

| Lesson | Read it | Exercise | Task |
|---|---|---|---|
| 1 | [What counts as personal data](https://community.samwelmunyingi.org/courses/privacy-by-design/what-is-personal-data/) | `pd1-1` | Marketing may only email customers who said yes |
| 2 | [Pseudonymisation and masking](https://community.samwelmunyingi.org/courses/privacy-by-design/pseudonymisation-and-masking/) | `pd2-1` | Build the analyst view: customer_id, email_token (sha256 of the text learn-salt followed b |
| 2 | [Pseudonymisation and masking](https://community.samwelmunyingi.org/courses/privacy-by-design/pseudonymisation-and-masking/) | `pd2-2` | Build the support view: customer_id, email_masked (first letter, then ***@, then the domai |
| 3 | [Minimisation and safe aggregates](https://community.samwelmunyingi.org/courses/privacy-by-design/minimisation-and-safe-aggregates/) | `pd3-1` | Build a safe report: city, birth_decade and customers, joining customers to customer_conta |
| 4 | [Deletion requests](https://community.samwelmunyingi.org/courses/privacy-by-design/deletion-requests/) | `pd4-1` | Which requests broke the 30-day deadline, either finished late or still open after 30 days |
| 4 | [Deletion requests](https://community.samwelmunyingi.org/courses/privacy-by-design/deletion-requests/) | `pd4-2` | Audit the completed requests: for customers whose request has a completed_at, how many row |
| 5 | [Mini project: a deletion plan](https://community.samwelmunyingi.org/courses/privacy-by-design/mini-project-deletion-plan/) | `pd5-1` | Find the customer of request 902, then return table_name, rows and action for: customers ( |

Each file in `exercises/` has the task as a comment and a starter. Copy them to your own folder with `python scripts/start.py YOUR-GITHUB-USERNAME`, solve them, and check them with `python scripts/check.py`.
