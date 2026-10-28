#!/bin/sh
# Checks the kit against itself: the tools run, and every file the docs point at
# exists. On 2026-10-27 a teammate's setup guide described a layout its repo had
# moved off, and this kit had the same drift (work/PLAN.md, tools/today.sh,
# you/uploads/ and drafts/ were named in skills and never existed).
set -eu
HERE="$(cd "$(dirname "$0")/.." && pwd)"
cd "$HERE"
fail() { echo "FAIL: $*"; exit 1; }

for f in tools/*.sh tests/*.sh; do sh -n "$f" || fail "syntax $f"; done
python3 -c 'import ast,sys; ast.parse(open(sys.argv[1]).read())' tools/slop-check || fail "slop-check doesn't parse"
for d in skills/*/; do grep -q '^name:' "$d/SKILL.md" || fail "skill $d has no name"; done
grep -q '^@AGENTS.md' CLAUDE.md || fail "CLAUDE.md no longer imports AGENTS.md"

# Every repo path the docs, skills and tools name has to exist.
missing=$(grep -rhoE '(plays|you|work|reference|skills|tools|tests)/[A-Za-z0-9_./-]*[A-Za-z0-9_]' \
  --include='*.md' --include='*.sh' --include='*.awk' --include=slop-check --exclude=smoke.sh . \
  | sort -u | while read -r p; do [ -e "$p" ] || echo "$p"; done)
[ -z "$missing" ] || fail "docs name files that don't exist: $missing"

# The tools work on a sample.
T="$(mktemp -d)"; trap 'rm -rf "$T"' EXIT
printf 'One two three four five.\n' >"$T/a.md"
sh tools/count.sh "$T/a.md" 10 >/dev/null || fail "count.sh failed a draft under its limit"
! sh tools/count.sh "$T/a.md" 3 >/dev/null 2>&1 || fail "count.sh passed a draft over its limit"
sh tools/deadline.sh 2099-01-01 >/dev/null || fail "deadline.sh failed on a far date"

# The setup steps a non-coder relies on.
grep -qF '</>' README.md || fail "README lost the Code tab icon"
grep -q 'Chat tab' README.md || fail "README lost the warning about the Chat tab"
grep -q 'snag' README.md || fail "README lost the snag report step"
if grep -rn 'brew install' --include='*.md' . ; then fail "a step needs Homebrew, whose password prompt an agent can't answer"; fi
if grep -rlI "$(printf '\342\200\224')" --exclude-dir=.git . ; then fail "em dash in a file"; fi
echo "smoke ok"
