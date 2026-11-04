## The manual is plain Markdown in the docs repo, so editing it is ordinary file editing plus a commit.

### Text edits

> Edit the files in /home/pecl/09-AIpaskaa/windbrowser-docs/docs/ (map.md, charts.md and so on). Any text editor works.
> Optionally preview the site with pip install mkdocs-material, then mkdocs serve, and open http://127.0.0.1:8000. It reloads when you save.
> Commit and push. Once the repo is on GitHub, the workflow rebuilds the site and the PDF and publishes both. There's nothing else to run.

### Changing the page order or adding a page

> Create the new .md file in docs/.
> Add it to nav: in mkdocs.yml. The nav order is the order of the site.
> Add it to the file list in tools/build_pdf.sh too, because the PDF uses its own list. If you skip this, the page is on the site but missing from the PDF.
 
### Screenshots

> Start the emulator: ~/Android/Sdk/emulator/emulator -avd Pixel_8 -no-window -no-audio -gpu swiftshader_indirect -no-snapshot.
> Install the app, and put it in the state you want to show. I screenshot the app already loaded with data, not a freshly cleared one.
> Run tools/screenshot.sh NAME. That overwrites docs/img/NAME.png, so the pages pick it up without edits. Check the image before committing.

### Checking the PDF locally

> Run tools/build_pdf.sh. It needs pandoc and pdflatex, which are installed here. The result is WindBrowser-manual.pdf in the repo root, and git ignores it.

### Finnish PDF

> The Finnish translation is in fi/ (same file names as docs/; images are taken from docs/img). MkDocs ignores it, so it is not on the site, only a PDF.
> It is not updated with every change. After major changes edit the fi/ pages, change the version line in fi/index.md by hand (set_version.sh does not touch it), run tools/build_pdf.sh fi and commit WindBrowser-manual-fi.pdf. The workflow only copies the committed file to the site.
> Building needs Finnish hyphenation: sudo apt install texlive-lang-european.
> Terms: tile and area are both "alue"; run = ennusteajo; wind barb = tuulinuoli; caption = kuvateksti; divider = jakaja; data limit = dataraja. App texts stay in English.
> A new page needs a fi/ file and an entry in the PAGES list in tools/build_pdf.sh (shared by both languages).

### Keeping it in step with the app

> The manual is a separate repo, so nothing reminds you to update it when the app changes. Once the push works, I'll add a line to the app's CLAUDE.md. It will tell me to check the manual whenever a feature or menu item changes.
