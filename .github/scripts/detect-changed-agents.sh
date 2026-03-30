#!/usr/bin/env bash
# detect-changed-agents.sh <from-ref> <to-ref>
# Outputs space-separated list of agent slugs that changed between two refs.
set -euo pipefail

FROM_REF="${1:?Usage: detect-changed-agents.sh <from-ref> <to-ref>}"
TO_REF="${2:?Usage: detect-changed-agents.sh <from-ref> <to-ref>}"

changed_agents=()

# Get top-level directories from changed files
dirs=$(git diff --name-only "$FROM_REF" "$TO_REF" \
  | grep '/' \
  | cut -d'/' -f1 \
  | sort -u)

for dir in $dirs; do
  # Skip hidden directories and non-agent directories
  [[ "$dir" == .* ]] && continue
  # Only include if the directory has an agent.yaml
  if [[ -f "$dir/agent.yaml" ]]; then
    changed_agents+=("$dir")
  fi
done

echo "${changed_agents[*]}"
