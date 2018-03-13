# polyurethane

A skeleton project for writing papers in markdown. Supports citations and output in pdf (via LaTeX) and html.

# Setup

For editing: just keep using whatever you're using to edit text. most editors will highlight markdown syntax and some also provide rendering previes, e.g. atom, vscode, sublime, etc. alex really likes [Typora](https://typora.io). it gets out of the way, is pretty, and works without installing anything else (as far as i can tell), and also uses pandoc in the background.

For building the pdf: install [pandoc](https://pandoc.org/installing.html), pandoc-citeproc (for the references) and pdflatex (for building latex-style pdfs)

For debian-based systems and windows with an [activated linux-subsystem](https://docs.microsoft.com/en-us/windows/wsl/install-win10) it should just be:

```bash
sudo apt install pandoc pandoc-citeproc pdflatex
```

For mac, there's `brew install pandoc`. i assume the other packages should be there as well.

Alternatively, you can also find [pandoc-installers for all OSes here](https://github.com/jgm/pandoc/releases/). But you'll need to install pdflatex some other way, e.g. by installing [MiKTeX](http://miktex.org/).


# Build 

Build **pdf** `pandoc --filter pandoc-citeproc main.md -o build/main.pdf`. 
There's a shell script that automates the build (`build.sh`) and also uses pandoc.

The `references.json` can be generated using e.g. [zotero](https://www.zotero.org/) (install [better-bibtex](https://github.com/retorquere/zotero-better-bibtex) and export as "better csl").

If you want **html**, run `pandoc --standalone --filter pandoc-citeproc main.md -o build/index.html` (the additional flag adds a header and a body-tag).

For **media-wiki-syntax** use `pandoc --filter pandoc-citeproc main.md -t mediawiki -o build/main.mediawiki.txt`.

