#!/bin/sh
# Writes "based on WindBrowser <version>" into docs/index.md (between the version markers).
# Reads the version from the app repository: the build number from frontend/version.properties
# and the release line (0.9) from frontend/app/build.gradle.kts. Both site and PDF are built from
# index.md, so both show it. Run before committing the manual; build_pdf.sh runs it too.
# Usage: tools/set_version.sh [APP_REPO]   (default ../nowcastRegatta, or $APP_REPO)
set -e
HERE="$(cd "$(dirname "$0")/.." && pwd)"
APP="${1:-${APP_REPO:-$HERE/../nowcastRegatta}}"
BUILD=$(sed -n 's/^build=\([0-9]*\).*/\1/p' "$APP/frontend/version.properties")
LINE=$(sed -n 's/.*val appVersion = "\([0-9]*\.[0-9]*\)\..*/\1/p' "$APP/frontend/app/build.gradle.kts")
[ -n "$BUILD" ] && [ -n "$LINE" ] || { echo "cannot read the version from $APP" >&2; exit 1; }
V="$LINE.$BUILD-b"
python3 -I - "$HERE/docs/index.md" "$V" <<'PY'
import re, sys
path, v = sys.argv[1:]
s = open(path).read()
new = f"<!-- version -->\n*This manual describes WindBrowser {v}.*\n<!-- /version -->"
s, n = re.subn(r"<!-- version -->.*?<!-- /version -->", new, s, flags=re.S)
assert n == 1, "version markers missing in index.md"
open(path, "w").write(s)
PY
echo "manual set to WindBrowser $V"
