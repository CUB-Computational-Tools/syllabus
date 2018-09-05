---
layout: default
permalink: /
---

# Welcome

This is the Syllabus for the Fall 2018 Computational Tools graduate class. This is an evolving document, please check back often.

# Logistics

- **GitHub**: [https://github.com/2018-Computational-Tools](https://github.com/2018-Computational-Tools)
- **Website**: [https://2018-computational-tools.github.io](https://2018-computational-tools.github.io)
- **Course #**: GEOL-5700-020
- **Time**: Tuesdays 4-6pm
- **Place**: Benson 340E (larger alternative TBD)
- **Credits**: 2

# Schedule

## Week 1

{% include image.md file="images/version_control.png" width="400" wrap="right" %}

### Topics (in class)

 - Logistics
 - Scheduling
 - Class Format
 - Intro to Git & GitHub

### Materials & Resources
 - [Using Git Cheatsheet](https://services.github.com/on-demand/downloads/github-git-cheat-sheet.pdf)
 - [Markdown (GitHub flavored) Cheatsheet](https://guides.github.com/pdfs/markdown-cheatsheet-online.pdf)

### Homework
1. Create a [GitHub](https://www.github.com) account
2. Learn the basics of git & GitHub by completing the following steps:
  - to get a visual of how git works, complete the first 3 lessons of the Introduction Sequence at [Learning Git Branching](https://learngitbranching.js.org/) (Introduction to Git Commits, Branching in Git, Merging in Git)
  - follow the installation instructions for [Git-it](https://github.com/jlord/git-it-electron##what-to-install) (Mac/Windows available), this includes the installation of a GitHub GUI with command line tools and a text editor of your choice (suggested are [Atom](atom/) or [Sublime](https://www.sublimetext.com/), both are excellent and will do the job, just read their websites and decide which resonates best with you)
  - start Git-It on your desktop and complete the entire program to learn git configuration, working with repositories, commits, forks, branches, GitHub remotes, and an actual collaboration exercise.
3. Join the Introductory Group exercise on GitHub Classroom by following [this link](https://classroom.github.com/g/laiMXd9w) and picking the already existing group `class` (we'll all work together on this one)
4. Complete the exercise outlined in the README of the [group repository](https://github.com/2018-Computational-Tools/group-info-class)  (only accessible after you've joined in the previous step)
5. In preparation for next class, install the following software on your computer (you don't have to use it yet, we just want you to be ready to dive straight in at the beginning of class):

#### Installing python and jupyter

 - we recommend installing [anaconda](https://docs.anaconda.com/anaconda/install/) for python 3.6 (if you already have anaconda for python 2.7, no need to reinstall!)
 - open a terminal and run `conda --version` to check the installed version (if lower than **conda 4.4**, recommend running `conda update conda`)
 - create a virtual environment for python 3.6 that we will use for the class (that way you can easily keep/run other python versions/configurations) by running `conda create -n class python=3.6 anaconda`
 - run `source activate class` (mac & linux) / `activate class` (windows) to test-activate the new virtual environment
 - check that running `python --version` gives **Python 3.6.5 :: Anaconda, Inc.**
 - run `source deactivate` (mac & linux) / `deactivate` (windows) to leave the virtual environment again
 - all done!

#### Installing R and RStudio
 - install the newest version of [R](https://cloud.r-project.org/) (should be 3.5.1), if you have older versions you want to keep you will still have access (see [details on version switching](https://support.rstudio.com/hc/en-us/articles/200486138-Changing-R-versions-for-RStudio-desktop))
 - install/upgrade to the [preview of the newest version of RStudio](https://www.rstudio.com/products/rstudio/download/preview/) (should be >= 1.2.907)
 - start RStudio
 - in the console, run `install.packages(c("devtools", "tidyverse", "rmarkdown", "reticulate", "readxl", "latex2exp"))`
 - all done!

## Week 2

### Topics (in class)
- get your playground from GitHubClassroom (follow [this link](https://classroom.github.com/a/-QXQGmbx)) and clone it to your system
- intro juypter notebooks & RMarkdown + - \\( \LaTeX \\) math
- primitive data types
- control structures
- functions

### Materials & Resources
- [Jupyter Notebook documentation](https://jupyter-notebook.readthedocs.io/)
- [RMarkdown: The Definitive Guide](https://bookdown.org/yihui/rmarkdown/)
- latex math Cheatsheet
- [Jupyter Notebook Cheatsheet](http://datacamp-community.s3.amazonaws.com/48093c40-5303-45f4-bbf9-0c96c0133c40)
- python basics cheatsheet
- [RStudio Cheatsheet](https://raw.githubusercontent.com/rstudio/Materials/master/rstudio-ide.pdf)
- [RMarkdown Cheatsheet](https://raw.githubusercontent.com/rstudio/Materials/master/rmarkdown-2.0.pdf)
- [dplyr Cheatsheet](https://raw.githubusercontent.com/rstudio/cheatsheets/master/data-transformation.pdf)
- [tidyr Cheatsheet](https://github.com/rstudio/cheatsheets/raw/master/data-import.pdf)

### Homework

#### Python

Complete lessons **Hello World** through **Functions** in the **Learn the basics** section of [learnpython.org](https://www.learnpython.org/) (for good practice we recommend writing the solutions in a jupyter notebook or RMarkdown file in your playground).

#### R

Two options. If you are a beginner, both are worth doing for the additional practice.

1. Swirl exercises
  - in your RStudio console, run/complete the following
  - `install.packages("swirl")`
  - `swirl::install_course("R Programming")`
  - `swirl::install_course("Getting and Cleaning Data")`
  - `swirl::swirl()`
  - select the **R Programming course** in the resulting menu and complete lessons **Basic Building Blocks** through **Functions**
  - select the **Getting and Cleaning Data** and complete lessons **Manipulating Data with dplyr**, **Grouping and Chaining with dplyr** and **Tidying Data with tidyr**

2. Data Carpentry workshop
  - go to the [datacarpentry workshop](https://datacarpentry.org/R-ecology-lesson/) (the data is for ecology but the approach is universal)
  - complete chapters 1-4 (**Before we start** to **Manipulating data frames**)

## Week 3

### Topics (in class)
- linting
- data structures (arrays, frames, etc.)
- plotting
- data import/export
- tbc

### Materials & Resources
- numpy
- matplotlib
- dplyr & tidyr
- ggplot
- data import (R & python)
- tbc

### Homework
- tutorials on plotting & data structure
- start individual semester projects
- tbc

## Week 4

### Topics (in class)
- data structures continued
- data wrangling
- tbc

### Homework
- continue individual projects
- tbc

### Materials & Resources
- pandas
- xarray
- tbc

## Week 5

### Topics (in class)
- project progress
- loose ends on data structures, plotting, etc.
- group discussion & plan on problem sets implementation
- tbc

### Homework
- start group problem sets
- continue individual projects
- tbc

### Materials & Resources
- tbc

## Week 6

### Topics (in class)
- code optimization strategies
- code packaging & documentation
- tbc

### Homework
- continue group problem sets
- continue individual projects
- tbc

### Materials & Resources
- R package development
- tbc

## Week 7

### Topics (in class)
- error handling
- unit testing
- test-driven development
- tbc

### Homework
- continue group problem sets
- continue individual projects
- tbc

### Materials & Resources
- testthat
- tbc

## Week 8 + 9

### Topics (in class)
- numerical tools
- Landlab
- tbc

### Homework
- continue group problem sets
- continue individual projects
- create a particle.io account
- install particle dev

### Materials & Resources
- tbc

## Week 10 + 11

### Topics (in class)
- microcontrollers
- data logging

### Homework
- continue group problem sets
- continue individual projects
- tbc

### Materials & Resources
- tbc

## Week 12

### Topics (in class)
- test the group problem sets

### Homework
- finalize group problem sets
- Happy Thanksgiving!

## Week 13

### Topics (in class)
- present final group problem sets
- topic chosen by the class, some options:
  - graphical user interfaces
  - text processing & regular expressions
  - databases

### Homework
- finalize individual project

## Week 14

### Topics (in class)
- present final individual project
- wrap-up

## Week 15
Party at AGU!
