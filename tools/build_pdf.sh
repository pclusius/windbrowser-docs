#!/bin/sh
# Builds WindBrowser-manual.pdf from the pages in nav order (needs pandoc and pdflatex).
set -e
cd "$(dirname "$0")/../docs"
pandoc index.md first-start.md map.md charts.md tiles.md stations.md settings.md updates.md about.md \
  --from markdown+link_attributes --resource-path=. --toc --number-sections -H ../tools/pdf-header.tex \
  -V geometry:margin=2.2cm -V colorlinks=true -V title="WindBrowser manual" \
  -o ../WindBrowser-manual.pdf
