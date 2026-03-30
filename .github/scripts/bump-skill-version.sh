#!/usr/bin/env bash
# bump-skill-version.sh <skill-name> <bump-type>
# Bumps the version in skills/<name>/SKILL.md frontmatter.
set -euo pipefail

SKILL_NAME="${1:?Usage: bump-skill-version.sh <skill-name> <bump-type>}"
BUMP_TYPE="${2:?Usage: bump-skill-version.sh <skill-name> <bump-type>}"

SKILL_FILE="skills/${SKILL_NAME}/SKILL.md"

if [[ ! -f "$SKILL_FILE" ]]; then
  echo "Error: skill file '$SKILL_FILE' not found" >&2
  exit 1
fi

# Extract current version from YAML frontmatter (between --- markers)
current=$(sed -n '/^---$/,/^---$/{ /^version:/{ s/version: *"\(.*\)"/\1/p; } }' "$SKILL_FILE")

if [[ -z "$current" ]]; then
  echo "Error: could not read version from '$SKILL_FILE'" >&2
  exit 1
fi

# Calculate new version using shared bump-version.sh
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
new=$("$SCRIPT_DIR/bump-version.sh" "$current" "$BUMP_TYPE")

# Replace version in frontmatter
sed -i "s/^version: \"${current}\"/version: \"${new}\"/" "$SKILL_FILE"

echo "Bumped $SKILL_NAME: $current → $new"
echo "$new"
