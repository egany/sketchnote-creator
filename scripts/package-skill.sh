#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
mkdir -p "$ROOT/dist"
rm -f "$ROOT/dist/sketchnote-creator-skill.zip"
(cd "$ROOT/skill" && zip -r "$ROOT/dist/sketchnote-creator-skill.zip" sketchnote-creator)
echo "Created $ROOT/dist/sketchnote-creator-skill.zip"
