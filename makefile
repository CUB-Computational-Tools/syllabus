# automatic generation of the lecture files for all .rmd and .ipynb files including an index file
# easiest use is by calling 'make lectures'
# NOTE: file names with spaces are NOT supported

# adjust the name of the python virtual environment as needed
py_venv := class

# adjust the file folder as needed
file_folder := docs/lectures

# file extensions
rmd_ext := Rmd
nb_ext := ipynb

# find all rmd files
rmd_doc_files := $(patsubst %.$(rmd_ext),%.html,$(wildcard $(file_folder)/*.$(rmd_ext)))

# find all ipynb files
nb_doc_files := $(patsubst %.$(nb_ext),%.html,$(wildcard $(file_folder)/*.$(nb_ext)))


all: lectures

# rendered documents
lectures: rmds nbs $(file_folder)/index.html
rmds: $(rmd_doc_files)
nbs: $(nb_doc_files)

# render calls
%_rmd.html: %_rmd.$(rmd_ext)
	Rscript -e "rmarkdown::render('$<')"
%_nb.html: %_nb.$(nb_ext)
	source activate $(py_venv) && jupyter nbconvert --to html --execute "$<"

# index file
%index.html: %index.Rmd
	Rscript -e "rmarkdown::render('$<')"
