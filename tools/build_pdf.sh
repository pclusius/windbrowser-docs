#!/bin/sh
# Builds WindBrowser-manual.pdf from the pages in nav order (needs pandoc and pdflatex).
# Usage: tools/build_pdf.sh        English, from docs/ (the version is stamped from the app repo)
#        tools/build_pdf.sh fi     Finnish, from fi/ -> WindBrowser-manual-fi.pdf
#                                  (needs Finnish hyphenation: sudo apt install texlive-lang-european;
#                                  the Finnish version line is edited by hand, see ohjeet.md)
set -e
HERE="$(cd "$(dirname "$0")/.." && pwd)"
PAGES="index.md first-start.md map.md charts.md tiles.md stations.md settings.md updates.md about.md"
if [ "$1" = "fi" ]; then
  cd "$HERE/fi"
  # shellcheck disable=SC2086
  pandoc $PAGES \
    --from markdown+link_attributes --resource-path=. --toc --number-sections -H ../tools/pdf-header.tex \
    -V geometry:margin=2.2cm -V colorlinks=true -V lang=fi -V title="WindBrowser-ohje" \
    -o ../WindBrowser-manual-fi.pdf
else
  [ -f "$HERE/../nowcastRegatta/frontend/version.properties" ] && "$HERE/tools/set_version.sh" || echo "app repo not found: keeping the version in index.md"
  cd "$HERE/docs"
  # shellcheck disable=SC2086
  pandoc $PAGES \
    --from markdown+link_attributes --resource-path=. --toc --number-sections -H ../tools/pdf-header.tex \
    -V geometry:margin=2.2cm -V colorlinks=true -V title="WindBrowser manual" \
    -o ../WindBrowser-manual.pdf
fi
