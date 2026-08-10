#!/usr/bin/env bash
# Refreshes the counts embedded in README.md between <!--stats:KEY--> markers.
# GitHub strips HTML comments when rendering, so the markers are invisible to
# readers while giving this script a stable anchor.
set -euo pipefail

README="${1:-README.md}"
missing=0

# Installer downloads ONLY. GitHub counts every release-asset fetch, so the
# Tauri updater's latest.json polls (~2/3 of the raw total) and the .sig files
# would inflate this roughly 3x — neither is a human downloading the app.
gd_downloads() {
  gh api "repos/theBGuy/GitDesktop/releases?per_page=100" --paginate \
    --jq '.[].assets[]
          | select((.name | endswith(".sig") | not) and .name != "latest.json")
          | .download_count' \
    | awk '{s+=$1} END {printf "%d", s+0}'
}

# 1234567 -> 1,234,567
commas() { printf "%s" "$1" | sed -E ':a;s/([0-9])([0-9]{3})($|,)/\1,\2\3/;ta'; }

set_stat() {
  local key="$1" val="$2"
  if ! grep -q "<!--stats:${key}-->" "$README"; then
    echo "::error::marker <!--stats:${key}--> not found in ${README}"
    missing=1
    return
  fi
  KEY="$key" VAL="$val" perl -0777 -i \
    -pe 's{(<!--stats:\Q$ENV{KEY}\E-->).*?(<!--/stats:\Q$ENV{KEY}\E-->)}{$1$ENV{VAL}$2}gs' \
    "$README"
}

repo_json() { gh api "repos/$1"; }

gd=$(repo_json theBGuy/GitDesktop)
kb=$(repo_json blizzhackers/kolbot)
sp=$(repo_json blizzhackers/kolbot-SoloPlay)

set_stat gd-stars     "$(commas "$(jq -r .stargazers_count <<<"$gd")")"
set_stat gd-forks     "$(jq -r .forks_count <<<"$gd")"
set_stat gd-downloads "$(commas "$(gd_downloads)")"
set_stat gd-version   "$(gh api repos/theBGuy/GitDesktop/releases/latest --jq .tag_name)"

set_stat kolbot-stars   "$(commas "$(jq -r .stargazers_count <<<"$kb")")"
set_stat kolbot-forks   "$(jq -r .forks_count <<<"$kb")"
set_stat soloplay-stars "$(jq -r .stargazers_count <<<"$sp")"
set_stat soloplay-forks "$(jq -r .forks_count <<<"$sp")"

# A dropped marker means the README silently stops updating that number, which
# is the exact rot this script exists to prevent — fail loudly instead.
if [ "$missing" -ne 0 ]; then
  echo "::error::one or more stats markers are missing; README not fully updated"
  exit 1
fi

echo "stats refreshed in ${README}"
