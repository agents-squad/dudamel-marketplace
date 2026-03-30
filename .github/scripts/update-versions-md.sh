#!/usr/bin/env bash
# update-versions-md.sh <bump-type> <agents-space-separated> <description>
# Inserts a new entry after "## Historial" in VERSIONS.md
set -euo pipefail

BUMP_TYPE="${1:?Usage: update-versions-md.sh <bump-type> <agents> <description>}"
AGENTS="${2:?Usage: update-versions-md.sh <bump-type> <agents> <description>}"
DESCRIPTION="${3:?Usage: update-versions-md.sh <bump-type> <agents> <description>}"

TODAY=$(date +%Y-%m-%d)

# Build agent list with versions (read from already-updated agent.yaml)
agent_list=""
for slug in $AGENTS; do
  version=$(grep '^version:' "agents/$slug/agent.yaml" | sed 's/version: *"\(.*\)"/\1/')
  if [[ -n "$agent_list" ]]; then
    agent_list="$agent_list, $slug ($version)"
  else
    agent_list="$slug ($version)"
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
      echo "Agentes: ${agent_list}"
    fi
  done < VERSIONS.md
} > VERSIONS.md.tmp

mv VERSIONS.md.tmp VERSIONS.md
