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

### Keeping it in step with the app

> The manual is a separate repo, so nothing reminds you to update it when the app changes. Once the push works, I'll add a line to the app's CLAUDE.md. It will tell me to check the manual whenever a feature or menu item changes.
