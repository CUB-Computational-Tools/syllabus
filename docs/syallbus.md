---
layout: default
permalink: /
---

# Welcome

This is the Syllabus for the Fall 2018 Computational Tools pilot class. This is an evolving document, please check back often.

# About

No matter the discipline, scientific research and teaching in the 21st century relies heavily on computational tools. This class aims to introduce graduate students in the geological, geophysical and biogeochemical sciences to a wide range of commonly used concepts and open source data tools to empower them to find the right tool for their computational needs in research and teaching. Interested students should have a rough idea for a programming/modeling/data science project relevant to their research goals that they want to pursue as part of this class. Prior experience with at least one programming language is recommended.  

# Logistics

- **GitHub**: [https://github.com/2018-Computational-Tools](https://github.com/2018-Computational-Tools)
- **Website**: [https://2018-computational-tools.github.io](https://2018-computational-tools.github.io)
- **Course #**: GEOL-5700-020
- **Time**: Tuesdays 4-6pm
- **Place**: Benson 1B81
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
 - [Using Git cheatsheet](https://services.github.com/on-demand/downloads/github-git-cheat-sheet.pdf)
 - [Markdown (GitHub flavored) cheatsheet](https://guides.github.com/pdfs/markdown-cheatsheet-online.pdf)

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
 - run `conda install -c conda-forge jupyterlab` to install jupyter lab
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
- intro juypter notebooks & RMarkdown + \\( \LaTeX \\) math
- data types

### Materials & Resources
- [Jupyter Notebook documentation](https://jupyter-notebook.readthedocs.io/)
  - [list of available kernels for other languages](https://github.com/jupyter/jupyter/wiki/Jupyter-kernels)
- [RMarkdown: The Definitive Guide](https://bookdown.org/yihui/rmarkdown/)
  - [list of available engines for other languages](https://bookdown.org/yihui/rmarkdown/language-engines.html)
- Quick references (cheatsheets):
  - [latex math cheatsheet](https://users.dickinson.edu/~richesod/latex/latexcheatsheet.pdf)
  - [Jupyter Notebook cheatsheet](http://datacamp-community.s3.amazonaws.com/48093c40-5303-45f4-bbf9-0c96c0133c40)
  - [Python basics cheatsheet](http://datacamp-community.s3.amazonaws.com/e30fbcd9-f595-4a9f-803d-05ca5bf84612)
  - [RStudio cheatsheet](https://raw.githubusercontent.com/rstudio/Materials/master/rstudio-ide.pdf)
  - [RMarkdown cheatsheet](https://raw.githubusercontent.com/rstudio/Materials/master/rmarkdown-2.0.pdf)

### Homework
Play with your [`playground-...` repository](https://classroom.github.com/a/-QXQGmbx) and the tutorials listed below. We recommend writing solutions down in Jupyter or RMarkdown notebooks for good practice. Also, git is your friend for keeping track of changes although branches are more optional if you're the only user of the repository. Quick reminder on launching Jupyter and RStudio:

 - Jupyter:
   - either open a terminal in your repository folder and start jupyter  from there, OR start it in any parent folder and navigate to your files manually
   - run `source activate class` (mac & linux) / `activate class` (windows) to activate the python environment (otherwise it will use your default environment)
   - run `jupyter lab` to start the jupyter server (or `jupyter notebook` if you prefer the single document version), navigate to your `.ipynb` files from there (or create new ones)
   - hit `Ctrl`+`C`+`C` to stop the notebook server when done
   - run `source deactivate` (mac & linux) / `deactivate` (windows) to leave the virtual environment again
- RStudio:
  - double click the `project.Rproj` file in your repository folder or navigate to it from the project menu in the upper right corner of RStudio
  - **troubleshooting note** on using python inside RMarkdown files:
  - this does NOT work reliably with RStudio versions < 1.2.900, [preview of the newest version of RStudio](https://www.rstudio.com/products/rstudio/download/preview/) is recommended
  - MacOS users may need to expose their path so the proper python version is found and used, do this by running the following command from your terminal:
  - `echo -e "#expose bash PATH to R\nPATH=$PATH" >>  ~/.Renviron`

#### Python

 - complete lessons **Hello World** through **Functions** in the **Learn the basics** section of [learnpython.org](https://www.learnpython.org/)
 - create your own RMarkdown or Jupyter notebooks to complete the exercises

#### R

Complete one or both of the following lessons. Doing both is probably overkill if you're already familiar with the materials but may be worth doing (or skimming) if you'd like to get some additional practice.

1. Swirl (interactive exercises from within R but keeping a running tap of solutions in RMarkdown may still be useful)
  - in your RStudio console, run/complete the following
  - `install.packages("swirl")`
  - `swirl::install_course("R Programming")`
  - `swirl::swirl()`
  - select the **R Programming course** in the resulting menu and complete lessons **Basic Building Blocks** through **Functions**

2. Data Carpentry workshop (create your own RMarkdown files to complete the challenges)
  - go to the [datacarpentry workshop](https://datacarpentry.org/R-ecology-lesson/) (the data is for ecology but the approach is universal)
  - complete chapters 1-3 (**Before we start** to **Starting with data**)

## Week 3

### Topics (in class)
- logic & operators
- functions

### Materials & Resources
- Recommended books:
  - [R for Data Science Book](http://r4ds.had.co.nz/) ([GitHub repository](https://github.com/hadley/r4ds) that generates this book)
  - [Fundamentals of Data Visualization](http://serialmentor.com/dataviz/) ([GitHub repository](https://github.com/clauswilke/dataviz) that generates this book)
  - [IPython Interactive Computing and Visualization Cookbook](https://www.packtpub.com/big-data-and-business-intelligence/ipython-interactive-computing-and-visualization-cookbook-second-e) ([GitHub repository](https://github.com/ipython-books/cookbook-2nd-code) with the exercises)
- Quick references (cheatsheets):
  - [dplyr cheatsheet](https://raw.githubusercontent.com/rstudio/cheatsheets/master/data-transformation.pdf)
  - [tidyr cheatsheet](https://github.com/rstudio/cheatsheets/raw/master/data-import.pdf)
  - [ggplot cheatsheet](https://raw.githubusercontent.com/rstudio/cheatsheets/master/data-visualization-2.1.pdf)
  - [numpy cheatsheet](https://s3.amazonaws.com/assets.datacamp.com/blog_assets/Numpy_Python_Cheat_Sheet.pdf)
  - [pandas cheatsheet](https://s3.amazonaws.com/assets.datacamp.com/blog_assets/PandasPythonForDataScience.pdf)
  - [matplotlib cheatsheet](https://s3.amazonaws.com/assets.datacamp.com/blog_assets/Python_Matplotlib_Cheat_Sheet.pdf)

### Homework

1. Add an item #5 to your profile in the [group repository](https://classroom.github.com/g/laiMXd9w) describing what you plan to do for your individual semester project. Be specific on the goal of your project and what aspects of/skills covered in this class you plan to make use of.

2. Additionally, continue to play with your [`playground-...` repository](https://classroom.github.com/a/-QXQGmbx) and the tutorials listed below.

#### Python

 - complete lessons **Numpy Arrays** and **Pandas Basics** in the **Data Science Tutorials** section of [learnpython.org](https://www.learnpython.org/)
 - complete the **Matplotlib** [DataCamp Tutorial](https://www.datacamp.com/community/tutorials/matplotlib-tutorial-python)

#### R

Again, complete one or both of the following lessons.

1. Swirl
  - `install.packages("swirl")`
  - `swirl::install_course("Getting and Cleaning Data")`
  - `swirl::install_course("Exploratory Data Analysis")`
  - `swirl::swirl()`
  - select the **Getting and Cleaning Data** course and complete lessons **Manipulating Data with dplyr**, **Grouping and Chaining with dplyr** and **Tidying Data with tidyr**
  - select the **Exploratory Data Analysis** course and complete lesson **8: GGPlot2 Part2** (yes, part2, part1 is more about `qplot` which is not as powerful as `ggplot`)

2. Data Carpentry workshop
  - go to the [datacarpentry workshop](https://datacarpentry.org/R-ecology-lesson/) (the data is for ecology but the approach is universal)
  - complete chapter 4 (**Manipulating data frames**) of the [datacarpentry workshop](https://datacarpentry.org/R-ecology-lesson/)
  - complete chapter 5 (**Visualizing data**) of the [datacarpentry workshop](https://datacarpentry.org/R-ecology-lesson/)

For some background and general reference on these tools, we recommend the online [R for Data Science Book](http://r4ds.had.co.nz/) - an excellent resource for approaches to data science in R. Highly recommend bookmarking the link and using it as a reference whenever you want to learn more about the most up-to-date way of dealing with specific data manipulation and processing problems. For the tools in this homework assignment, the [R for Data Science Book](http://r4ds.had.co.nz/) chapters on [**Tiday data**](http://r4ds.had.co.nz/tidy-data.html) and [**Visualization**](http://r4ds.had.co.nz/data-visualisation.html) as well as the [**Introduction to aesthetics**](https://serialmentor.com/dataviz/aesthetic-mapping.html#aesthetics-and-types-of-data) in [Fundamentals of Data Visualization](http://serialmentor.com/dataviz/) will be particularly valuable.


## Week 4

### Topics (in class)
- overview of individual projects
- function documentation
- analysis script examples
- data structures (matrices, frames, etc.)
- plotting

### Homework
- set up a repository for your project - to start a private project repository in the Classroom organization, use [this link](https://classroom.github.com/a/N3tbbNah)
- if you want to use the project template we used earlier, you can download [this repository](https://github.com/2018-Computational-Tools/assignment_template) and copy whichever parts you like into your new project
- create a branch for the week (`dev` or `in-progress` or `week-1`, whatever you prefer) and work on the project
- before next class, make a pull request to merge your week branch into `master` and request a review from your team partner (you will have to add them by their github user name as a `Collaborator` in the repository `Settings` --> `Collaborators & Teams` section, with at least `Read` access)
- review the pull request from your team partner adding comments for anything you are confused about or unclear why/what they are doing in their code

## Week 5

### Topics (in class)
- project progress updates
- loose ends on data structures
- numerical methods

### Homework
- once again, create a branch for the week and work on your individual project
- before next class, make a pull request to merge your week branch into `master` and request a review from your team partner
- review the pull request from your team partner adding comments for anything you are confused about or unclear why/what they are doing in their code

## Week 6

### Topics (in class)
- problem set design:
  - faculty present on their spring undergraduate classes
  - group discussion, team selection & plan on problem sets implementation
- wrap up numerical integration

### Homework
- continue individual projects (the usual weekly branch and review)
- decide which group project group you want to be in and think about ideas for problem set development
- in preparation for next class, accept the following assignments so we're not waylaid by everyone doing this at the same time in class (no need to work on it yet!):
  - [R Package Development](https://classroom.github.com/a/7yVTG-L0)
  - [Python Package Development](https://classroom.github.com/a/WrS9ncIn)

## Week 7

## Topics (in class)
- unit testing
- test-driven development
- package development
- error handling

### Materials & Resources
- [GitHub Desktop](https://desktop.github.com/)
- Books/Articles:
  - [Mastering Software Development in R](https://bookdown.org/rdpeng/RProgDA/), especially the [chapter on Building R Packages](https://bookdown.org/rdpeng/RProgDA/building-r-packages.html)
  - [R packages](http://r-pkgs.had.co.nz/)
  - [Post on Testing & Packaging in Python](https://hynek.me/articles/testing-packaging/)
- Quick references (cheat sheet)
  - [R Development Tools](https://raw.githubusercontent.com/rstudio/cheatsheets/master/package-development.pdf)

### Homework
- create a problem set repo for your problem set team using [this template](https://classroom.github.com/g/WPSllYp_)
- start on group problem sets
- continue individual projects

## Week 8

### Topics (in class)
- wrap up package development
- loose ends
- linting

### Materials & Resources
- [color blind color use](http://jfly.iam.u-tokyo.ac.jp/color/)
- [R color palettes](http://www.cookbook-r.com/Graphs/Colors_(ggplot2)/#a-colorblind-friendly-palette)
- [Linting in R](https://github.com/jimhester/lintr#rstudio): `devtools::install_github("jimhester/lintr")`

### Homework
- continue group problem sets
- continue individual projects
- create a free account at [particle.io](https://login.particle.io/signup?redirect=https%3A%2F%2Fwww.particle.io%2F) (cloud service for remote microcontrollers)
- install the [Particle Development Environment (IDE)](https://docs.particle.io/guide/tools-and-features/dev/)
- install the [Particle Command Line Interface (CLI)](https://docs.particle.io/guide/tools-and-features/cli/photon/#installing)
- optional but useful: install the Particle App on your phone ([iPhone](https://itunes.apple.com/us/app/particle-build-iot-projects-wifi-or-cellular/id991459054?mt=8), [Android](https://play.google.com/store/apps/details?id=io.particle.android.app), [Windows](https://www.microsoft.com/en-us/store/p/particle/9nblggh4p55n))

## Week 9 + 10

### Topics (in class)
- microcontrollers
- start [microcontrollers intro](https://classroom.github.com/a/WntfaQBd)

### Homework
- continue group problem sets
- continue individual projects

### Materials & Resources
- tbc

## Week 11
- parallelization and benchmarking
- advanced numerical tools

### Topics (in class)
- loose ends
- code optimization/problems Q&A
- tips & tricks
- advanced package/library development

### Homework
- continue group problem sets
- continue individual projects

### Materials & Resources
- Parallel Processing
  - [Mapping with Purrr](https://raw.githubusercontent.com/rstudio/cheatsheets/master/purrr.pdf)
  - [Presentation on xarray and dask](https://www.ecmwf.int/sites/default/files/elibrary/2017/17837-xarray-n-d-labeled-arrays-and-datasets-python.pdf)
  - [Dask cheat sheet](http://docs.dask.org/en/latest/_downloads/daskcheatsheet.pdf)


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
