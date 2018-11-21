# automatic generation of the lecture files for all .rmd and .ipynb files including an index file
# easiest use is by calling 'make lectures'
# NOTE: file names with spaces are NOT supported

# adjust the name of the python virtual environment as needed
py_venv := class

# adjust the file folder as needed
file_folder := docs/resources

# file extensions
md_pre := md
md_ext := Rmd
rmd_pre := rmd
rmd_ext := Rmd
nb_pre := nb
nb_ext := ipynb

# find all md files
md_doc_files := $(patsubst %.$(md_ext),%.html,$(wildcard $(file_folder)/*_$(md_pre).$(md_ext)))

# find all rmd files
rmd_doc_files := $(patsubst %.$(rmd_ext),%.html,$(wildcard $(file_folder)/*_$(rmd_pre).$(rmd_ext)))

# find all ipynb files
nb_doc_files := $(patsubst %.$(nb_ext),%.html,$(wildcard $(file_folder)/*_$(nb_pre).$(nb_ext)))


all: lectures

# rendered documents
lectures: md rmds nbs
		make $(file_folder)/index.html
md: $(md_doc_files)
rmds: $(rmd_doc_files)
nbs: $(nb_doc_files)

# render calls
%_$(md_pre).html: %_$(md_pre).$(md_ext)
	Rscript -e "rmarkdown::render('$<')"
	touch $(file_folder)/index.Rmd
%_$(rmd_pre).html: %_$(rmd_pre).$(rmd_ext)
	Rscript -e "rmarkdown::render('$<')"
	touch $(file_folder)/index.Rmd
%_$(nb_pre).html: %_$(nb_pre).$(nb_ext)
	source activate $(py_venv) && jupyter nbconvert --to html --execute "$<"
	touch $(file_folder)/index.Rmd

# index file
%index.html: %index.Rmd
	Rscript -e "rmarkdown::render('$<')"
