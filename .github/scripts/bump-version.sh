#!/usr/bin/env bash
# bump-version.sh <current-version> <bump-type>
# Outputs the new version string.
# bump-type: minor | major
set -euo pipefail

CURRENT="${1:?Usage: bump-version.sh <current-version> <bump-type>}"
BUMP_TYPE="${2:?Usage: bump-version.sh <current-version> <bump-type>}"

MAJOR="${CURRENT%%.*}"
MINOR="${CURRENT#*.}"

case "$BUMP_TYPE" in
  minor)
    echo "${MAJOR}.$((MINOR + 1))"
    ;;
  major)
    echo "$((MAJOR + 1)).0"
    ;;
  *)
    echo "Error: bump-type must be 'minor' or 'major', got '$BUMP_TYPE'" >&2
    exit 1
    ;;
esac
