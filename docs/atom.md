---
layout: default
permalink: /atom/
---

# Atom

[Atom](https://atom.io/) was built by GitHub as a highly hackable text editor that can be configured for working with pretty much any plain text file with excellent syntax highlighting and other useful features. There is lots of help online by simply googling `atom` + `what you want to do with it` so we'll keep this configuration overview at a bare minimum with just a few pointers for getting started.

# Installation & Setup

1. Download and install Atom for your operating system (Instructions for [Mac](https://flight-manual.atom.io/getting-started/sections/installing-atom/#platform-mac) | [Windows](https://flight-manual.atom.io/getting-started/sections/installing-atom/#platform-windows) | [Linux](https://flight-manual.atom.io/getting-started/sections/installing-atom/#platform-linux))
1. Start Atom and add repository folder(s) you want to work with as new projects with `File > Add Project Folder`
1. Install and configure the extensions you want to work with through the user interface or via command line - see the official [Instructions for installing packages](http://flight-manual.atom.io/using-atom/sections/atom-packages/) (sometimes you may have to restart atom for new packages to function properly)
1. One package that is universally useful to have within Atom is the terminal: [see details here](https://atom.io/packages/platformio-ide-terminal).

# Specific languages

## Markdown files

Atom is awesome for markdown files.

1. Useful packages:
     - `markdown-writer`
     - `tool-bar`
     - `tool-bar-markdown-writer`
     - `markdown-preview-plus`
 1. Open your markdown files and trigger preview via `Packages` -> `Markdown Preview Plus` -> `Toggle Preview` (or use the keyboard shortcut for it)

## Python script files

Great syntax highlighting, auto-completion and linting. Actually works pretty well straight out of the box but there are any tutorials out there for optimizing the setup, e.g. [this one](http://www.marinamele.com/install-and-configure-atom-editor-for-python).

## Jupyter notebooks

Run well in your browser but if you want to edit straight from Atom, check out [this package](https://atom.io/packages/jupyter-notebook).

## R & RMarkdown

Although there are some good R extensions for Atom, this is the one language where [RStudio](https://www.rstudio.com/) is (still) the better way to go because it is so excellently optimized for working with R.

## C++

Lots of good video tutorials out there. For programming C++ for particle microcontrollers specifically, there is an excellent pre-customized atom installation called [Particle Dev](https://docs.particle.io/guide/tools-and-features/dev/) that is recommended.

## LaTeX

 Again, plenty of online help available and many tutorials on how to set it up, e.g. [this one](https://medium.com/@lucasrebscher/using-atom-as-a-latex-editor-93756de3d726).
