#!/bin/sh
# Word counts against limits. The agent can't count words; wc can.
#
# Usage:
#   tools/count.sh <file> <limit>   one file
#   tools/count.sh --all            every row in work/TRACKER.md with a Limit and a File
#
# Markdown headings, HTML comments and blank lines are not counted. Bracket
# holes like [what went wrong] ARE counted, so a draft with holes reads long.
# Files are looked up relative to this repo.
# Exit 1 if anything is over its limit or missing.

cd "$(dirname "$0")/.." || exit 0

words() { sed -e '/^#/d' -e 's/<!--.*-->//g' "$1" | wc -w | tr -d ' '; }
holes() { grep -o '\[[^]]*\]' "$1" | grep -vc '^\[x\]$' | tr -d ' '; }

resolve() {
  [ -f "$1" ] && { echo "$1"; return; }
  echo ""
}

one() {
  f=$(resolve "$1"); lim=$2; label=${3:-$1}
  if [ -z "$f" ]; then printf "  %-34s MISSING (%s)\n" "$label" "$1"; return 1; fi
  n=$(words "$f"); h=$(holes "$f")
  status="ok"; rc=0
  [ "$n" -gt "$lim" ] && { status="OVER by $((n - lim))"; rc=1; }
  extra=""; [ "$h" -gt 0 ] && extra="  ($h bracket hole(s) left)"
  printf "  %-34s %4s / %-4s %s%s\n" "$label" "$n" "$lim" "$status" "$extra"
  return $rc
}

if [ "$1" = "--all" ]; then
  RC=0
  TMP=$(mktemp)
  awk -F'|' '
    /^\| *Item/ { for (i=1;i<=NF;i++){h=$i; gsub(/^ +| +$/,"",h); c[tolower(h)]=i}; next }
    /^\|/ && ("limit" in c) {
      l=$(c["limit"]); f=$(c["file"]); it=$(c["item"])
      gsub(/[^0-9]/,"",l); gsub(/^ +| +$/,"",f); gsub(/^ +| +$/,"",it)
      if (l != "" && f != "" && f !~ /\/$/) print it "\t" f "\t" l
    }' work/TRACKER.md > "$TMP"
  while IFS="$(printf '\t')" read -r it f l; do
    one "$f" "$l" "$it" || RC=1
  done < "$TMP"
  rm -f "$TMP"
  exit $RC
fi

[ -n "$1" ] && [ -n "$2" ] || { echo "Usage: tools/count.sh <file> <limit> | --all"; exit 0; }
one "$1" "$2"
