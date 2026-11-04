#!/bin/sh
# Builds WindBrowser-manual.pdf from the pages in nav order (needs pandoc and pdflatex).
set -e
[ -f "$(dirname "$0")/../../nowcastRegatta/frontend/version.properties" ] && "$(dirname "$0")/set_version.sh" || echo "app repo not found: keeping the version in index.md"
cd "$(dirname "$0")/../docs"
pandoc index.md first-start.md map.md charts.md tiles.md stations.md settings.md updates.md about.md \
  --from markdown+link_attributes --resource-path=. --toc --number-sections -H ../tools/pdf-header.tex \
  -V geometry:margin=2.2cm -V colorlinks=true -V title="WindBrowser manual" \
  -o ../WindBrowser-manual.pdf
