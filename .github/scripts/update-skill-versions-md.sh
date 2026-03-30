#!/usr/bin/env bash
# update-skill-versions-md.sh <bump-type> <skills-space-separated> <description>
# Inserts a new entry after "## Historial" in SKILL-VERSIONS.md
set -euo pipefail

BUMP_TYPE="${1:?Usage: update-skill-versions-md.sh <bump-type> <skills> <description>}"
SKILLS="${2:?Usage: update-skill-versions-md.sh <bump-type> <skills> <description>}"
DESCRIPTION="${3:?Usage: update-skill-versions-md.sh <bump-type> <skills> <description>}"

TODAY=$(date +%Y-%m-%d)

# Build skill list with versions (read from already-updated SKILL.md)
skill_list=""
for name in $SKILLS; do
  version=$(sed -n '/^---$/,/^---$/{ /^version:/{ s/version: *"\(.*\)"/\1/p; } }' "skills/$name/SKILL.md")
  if [[ -n "$skill_list" ]]; then
    skill_list="$skill_list, $name ($version)"
  else
    skill_list="$name ($version)"
  fi
done

# Build the new entry block and insert after "## Historial" using temp file (portable)
{
  while IFS= read -r line; do
    echo "$line"
    if [[ "$line" == "## Historial" ]]; then
      echo ""
      echo "### ${BUMP_TYPE} bump — ${DESCRIPTION} (${TODAY})"
      echo ""
      echo "Skills: ${skill_list}"
    fi
  done < SKILL-VERSIONS.md
} > SKILL-VERSIONS.md.tmp

mv SKILL-VERSIONS.md.tmp SKILL-VERSIONS.md
