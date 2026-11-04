#!/bin/sh
# Builds the offline copy of the manual for the app and copies it to the app's assets.
# Usage: tools/build_offline.sh [APP_REPO]   (default ../nowcastRegatta, or $APP_REPO)
# Needs mkdocs-material and pillow (MKDOCS=/path/to/bin/mkdocs, PYTHON=... to use a venv).
# Screenshots are scaled to 600 px wide and reduced to 128 colours in a temporary copy of docs/,
# so the files in docs/img stay full size. The result in the app is not committed there.
set -e
HERE="$(cd "$(dirname "$0")/.." && pwd)"
APP="${1:-${APP_REPO:-$HERE/../nowcastRegatta}}"
MKDOCS="${MKDOCS:-mkdocs}"; PYTHON="${PYTHON:-python3}"
OUT="$APP/frontend/app/src/main/assets/manual"
WORK="$(mktemp -d)"
trap 'rm -rf "$WORK"' EXIT
cp -r "$HERE/docs" "$HERE/mkdocs.yml" "$HERE/mkdocs-offline.yml" "$WORK/"
"$PYTHON" -I - "$WORK/docs/img" <<'PY'
import sys, pathlib
from PIL import Image
for p in pathlib.Path(sys.argv[1]).glob("*.png"):
    im = Image.open(p).convert("RGB")
    w = 600
    im = im.resize((w, round(im.height * w / im.width)), Image.LANCZOS)
    im.quantize(128).save(p, optimize=True)
PY
(cd "$WORK" && "$MKDOCS" build -q -f mkdocs-offline.yml -d site)
rm -f "$WORK"/site/sitemap.xml* "$WORK"/site/404.html
rm -rf "$OUT"; mkdir -p "$OUT"; cp -r "$WORK/site/." "$OUT/"
du -sh "$OUT"
