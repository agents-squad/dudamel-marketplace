#!/usr/bin/env bash
# detect-changed-skills.sh <from-ref> <to-ref>
# Outputs space-separated list of skill names that changed between two refs.
set -euo pipefail

FROM_REF="${1:?Usage: detect-changed-skills.sh <from-ref> <to-ref>}"
TO_REF="${2:?Usage: detect-changed-skills.sh <from-ref> <to-ref>}"

changed_skills=()

# Get skill directories from changed files under skills/
dirs=$(git diff --name-only "$FROM_REF" "$TO_REF" \
  | grep '^skills/' \
  | cut -d'/' -f2 \
  | sort -u) || true

for dir in $dirs; do
  # Skip dotfiles (e.g. .gitkeep)
  [[ "$dir" == .* ]] && continue
  # Only include if the directory has a SKILL.md
  if [[ -f "skills/$dir/SKILL.md" ]]; then
    changed_skills+=("$dir")
  fi
done

echo "${changed_skills[*]:-}"
