# automatic generation of the docs .html files for all .rmd and .ipynb files including an index file
# easiest use is by calling 'make docs'

# adjust the name of the python virtual environment as needed
py_venv := class

# adjust the output folders as needed
file_folder := lectures
doc_folder := docs
rmd_doc_folder := $(doc_folder)
nb_doc_folder := $(doc_folder)

# file extensions
rmd_ext := Rmd
nb_ext := ipynb

# find all rmd files
rmd_doc_files := $(patsubst %.$(rmd_ext),$(rmd_doc_folder)/%.html,$(wildcard $(file_folder)/*.$(rmd_ext)))
rmd_prob_files := $(shell ls | egrep '. ' | egrep '\.$(rmd_ext)' | sed 's/ /!!! !!!/g')

# find all ipynb files
nb_doc_files := $(patsubst %.$(nb_ext),$(nb_doc_folder)/%.html,$(wildcard $(file_folder)/*.$(nb_ext)))
nb_prob_files := $(shell ls | egrep '. ' | egrep '\.$(nb_ext)' | sed 's/ /!!! !!!/g')

all: docs

# rendered documents
docs: rmds nbs
rmds: rmd_check $(rmd_doc_files)
nbs: nb_check $(nb_doc_files)

# render calls
$(rmd_doc_folder)/%.html: %.$(rmd_ext)
	Rscript -e "rmarkdown::render('$<', output_dir = '$(rmd_doc_folder)/$(file_folder)')"
$(nb_doc_folder)/%.html: %.$(nb_ext)
	source activate $(py_venv) && jupyter nbconvert --to html --execute "$<" --output-dir $(nb_doc_folder)/$(file_folder)

# checks
rmd_check:
ifeq ($(rmd_prob_files),)
	@echo "\nCHECK COMPLETE: file names are OK (no spaces)\n"
else
	@echo "\nERROR: file names with spaces are not allowed! please fix offending file(s) below (spaces highlighted):\n--> $(rmd_prob_files)\n"
	exit 1
endif

nb_check:
ifeq ($(nb_prob_files),)
	@echo "\nCHECK COMPLETE: file names are OK (no spaces)\n"
else
	@echo "\nERROR: file names with spaces are not allowed! please fix offending file(s) below (spaces highlighted):\n--> $(nb_prob_files)\n"
	exit 1
endif
