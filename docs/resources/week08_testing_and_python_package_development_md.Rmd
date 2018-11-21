---
title: "Pyhon Package Development"
output:
  html_document:
    toc: yes
    toc_float: yes
---

# Clone repository

 - clone this repository to your desktop
 - open it in your favorite python code editor (e.g. atom or spyder)

# Using the package

 - go to the command line and navigate to the package (i.e. the folder where the `setup.py` is located)
 - install the package from the command line:
    ```bash
    # activate your environment
    source activate class # linux/macos
    activate class # windows
    # install the package in development mode
    pip install -e .
    ```
 - now in any python session within this environment you can import your package functions, e.g.:
    ```python
    from awesome import module
    module.hello()
    ```
 - or call functions listed in the `setup.py` -> `entry_points` directly from the command-line:
    ```bash
    hello
    ```
 - any code changes you make will be automatically reflected in the command-line calls and after each new import of the package in a python session - but don't use the console for testing!

# Testing the package

- rather than testing your package interactively, you should write tests that automatically check your functionality
- to run a specific test file, you can call e.g. `pytest tests/test_package.py` from the command line (you may have to `pip install pytest` first) - take a look at the `tests/test_package.py` file to see what it checks
- to run doctests on a code file you can call e.g. `pytest src/awesome/module.py --doctest-modules`
- to run all your tests and doctests automatically in **multiple virtual environments** to ensure your package works outside your current workspace and in multiple python versions (e.g. python 2.7 and python 3.6), call `tox` from the command line (you may have to `pip install tox` first)
- to run all tests for just one specific version, use e.g. `tox -e py36` - take a look at the `tox.ini` to see how it is setup and use `tox -l` to find the list of available testing environments

# Documenting the package

 - to automatically generate your documentation using [sphinx](http://www.sphinx-doc.org/en/master/), run `sphinx-build sphinx docs` form the command line (you may have to `pip install sphinx sphinx_rtd_theme m2r` first)
 - check the `docs` folder and open the `index.html` to see your documentation
 - to run this routinely and also check that your documentation has valid links to other pages, simply run `tox -e docs` (see `tox.ini` for what it does)
 - to enable access to this documentation online, make sure to commit the contents of the `docs` folder to GitHub and go to your repository **Settings** --> **GitHub Pages** --> **Source**: select `master branch/docs folder`
 - alternatively (or additionally) you can log into [read the docs](https://docs.readthedocs.io) with your GitHub account and import your documentation directly from your repository to have it hosted on read the docs

# Modifying the package

  - start your modifications by changing the version in `src/awesome/version.py` and see how it affects calling `hello` and `tox`
  - give your package a unique name by changing **awesome** to something else everywhere it occurs in `setup.py`, the name of the `src/awesome` folder, as well as in `sphinx/conf.py` and `spinx/reference.rst` (the latter two to also have your documentation reflect the changes)
  - implement new modules and functions, document them with docstring, and add tests for them - keep testing your package along the way to see how it is doing!
  - make sure to keep `setup.py` up-to-date with the dependencies and other information (for additional information, [here is the documentation for `setuptools`](https://setuptools.readthedocs.io/en/latest/setuptools.html)) (Note that there is a gradual movement in the python community away from `setup.py` and towards a `pyrproject.toml` file with different project dependency managers such as e.g. [**poetry**](https://poetry.eustace.io/) - the final best practice solution is still in flux so we are recommending to stick with `setup.py` for now)
  - make sure to work with git to keep track of your changes and push commits back to GitHub

# Continuous Integration

 - continuous integration (i.e. automatic testing) with every commit is very useful and this repo contains a basic `.travis.yml` file to make this possible

# Coding Style / Linting

 - there are various types of linters available for python, we recommend [black](https://black.readthedocs.io/en/stable/) which is quite opinionated but gets the job done easily and efficiently
 - to install, run `pip install black`
 - to use, run e.g. `black src` or `black tests`, it will reformat all python files in the respective folders to fit its prescribed coding style.

# Code test coverage

- to figure out how much of your code base is actually covered with tests, the `coverage` package is a great tool
- to install, run `pip install coverage`
- to use, run `coverage run -m pytest --doctest-modules` and then `coverage report` for a summary of the results
- for a more detailed view, run `coverage report` and launch the created `htmlcov/index.html` file

# Releasing your package

- your users (or you) can install your package directly from GitHub using the following syntax:
    ```bash
    pip install git+https://github.com/USER/REPO.git
    ```

- for wider distribution it is useful to upload your package to the [Python Package Index (PyPI)](https://pypi.org/) at which point it will become available to your users via regular `pip` install:
    ```bash
    pip install PGKNAME
    ```

- if you have already settled on a name for your package (it must be unique on PyPI!), it is worthwhile registering the name with PyPI using the following command from your main package directory (you'll need a PyPI account first and then user your login credentials):
    ```bash
    python setup.py register
    ```

- and to actually upload/update your package on PyPI:
    ```bash
    python setup.py sdist upload
    ```

 - note that the `sdist` part creates a distribution `.tar.gz` file in your `dist` folder which you could also manually distribute to others (or use to test-install your package although we recommend taking the GitHub route for this)
