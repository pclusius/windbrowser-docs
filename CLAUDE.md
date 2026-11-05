# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

The user manual for the WindBrowser Android app (app repo: `../nowcastRegatta`, package `fi.windbrowser.app`). No application code here: Markdown, a MkDocs config, and shell scripts. `ohjeet.md` holds the maintainer's own how-to notes (screenshots, PDF, etc.).

## Commands

- Preview site: `mkdocs serve` (needs `mkdocs-material`); build: `mkdocs build` (output `site/`, git-ignored).
- English PDF: `tools/build_pdf.sh` (pandoc + pdflatex). It first runs `tools/set_version.sh` if `../nowcastRegatta` exists, which rewrites the version line in `docs/index.md`.
- Finnish PDF: `tools/build_pdf.sh fi` (needs `texlive-lang-european` for hyphenation).
- Offline copy for the app: `tools/build_offline.sh [APP_REPO]` builds `mkdocs-offline.yml` from a temp copy of `docs/` (screenshots shrunk to 600 px / 128 colours there only) into the app's `frontend/app/src/main/assets/manual/`, which is not committed in the app repo.
- Screenshot: `tools/screenshot.sh NAME` overwrites `docs/img/NAME.png` from the running emulator.
- There are no tests or linters.

## Structure that spans several files

- **English is the source of truth**: `docs/*.md`, nav order in `mkdocs.yml`. The PDF uses its own page lists in `tools/build_pdf.sh`: `PAGES` (English) and `PAGES_FI` (Finnish; today the same list, but it can be set apart to build the Finnish PDF while `fi/` lags behind): a new page must be added to `nav` **and** to `PAGES`, or it is missing from the PDF.
- **Finnish is PDF-only**: `fi/*.md` has the same file names, takes images from `../docs/img/`, and MkDocs ignores it (outside `docs/`). It is updated only after major changes, not with every app change, and its version line in `fi/index.md` is edited by hand (`set_version.sh` only stamps `docs/index.md`, between the `<!-- version -->` markers). Glossary: tile and area are both "alue", run = ennusteajo, wind barb = tuulinuoli, caption = kuvateksti, divider = jakaja, data limit = dataraja; app UI strings stay in English because the app is English-only.
- **Both PDFs are committed** (`WindBrowser-manual.pdf`, `WindBrowser-manual-fi.pdf`). The Pages workflow (`.github/workflows/pages.yml`, on push to `main`) rebuilds the site and the English PDF, but only copies the committed Finnish PDF, so CI needs no Finnish TeX. After editing `fi/`, rebuild and commit the Finnish PDF; after editing `docs/`, rebuild the English one if it should match.
- **Links to the PDFs are absolute** (`https://pclusius.github.io/windbrowser-docs/...` in `docs/index.md`, `docs/about.md`, `fi/about.md`) because the same text goes into the PDFs. The app's About dialog (`MapPane.kt` in the app repo) links the same URLs.
- **Offline variant**: `mkdocs-offline.yml` inherits `mkdocs.yml`, uses `use_directory_urls: false` and no network fonts; the app serves it through `WebViewAssetLoader`. Do not add the MkDocs `offline` plugin (it loads a script from unpkg.com).
- Pandoc builds the PDF from the same Markdown: image size attributes like `{ width=320 }` and plain `![]()` images work in both; `!!! note` admonitions only render as such on the site.

## Conventions

- Keep the manual in step with the app: when a feature, menu item or screen changes, update the matching page (and screenshot) here. App UI labels are quoted in English and bold.
- The version stamp tracks the app build number (`0.9.<build>-b`, from the app repo's `frontend/version.properties`); don't edit it by hand in `docs/index.md`.
- Commit messages in this repo are short English summaries (e.g. "Manual: air temperature ..., version 0.9.63-b").
