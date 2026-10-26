# Setup, the first session

Goal: by the end, `you/PROFILE.md`, `work/SCHOOLS.md` and `work/TRACKER.md` have real rows, and the folder is saved to their private GitHub repo.

1. Say hi in one line and tell them this takes about 15 minutes and they can answer in fragments.
2. Ask, one at a time, and write each answer into `you/PROFILE.md` the moment you get it:
   - Name, school, grade
   - Which schools, and which round for each (Early Decision, Early Action, Regular)
   - Intended major or majors
   - How many hours a day they can honestly give apps, after school, practice, work and sleep
   - When they're stuck, what's actually happening? (a) too many options (b) scared it won't be good enough (c) don't know the next step (d) don't care about this one
   - When were they most locked in this year?
   - Who else reads their drafts?
3. Ask them to share whatever already exists: drafts, a brainstorm doc, a resume, an activities list. Read every one whole.
4. For each school, open its own admissions page, read the deadline and every requirement, and write rows into `work/SCHOOLS.md` and `work/TRACKER.md` with the source and today's date. Flag any binding Early Decision, restrictive early action, or early portfolio deadline.
5. Save the folder to GitHub, doing every step yourself:
   - If `git` or `gh` is missing on a Mac, install Homebrew, then `brew install gh git`. Tell them when the Mac password prompt is coming.
   - Run `gh auth login --web` and tell them to finish the sign-in in their browser.
   - If this folder isn't a git repo yet (a ZIP download isn't), run `git init` and commit everything.
   - Create a PRIVATE repo for it (`gh repo create my-college-apps --private --source . --push`). Their essays never go in a public repo. If that name is taken, pick another.
6. Set Phase to 1 in `PROGRESS.md`, write the one thing for tomorrow, and tell them: open this folder and say "what do I do today."
