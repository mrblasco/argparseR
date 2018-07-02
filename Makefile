
NAME := argparseR

all:
	R -e 'library(devtools);document()'

install: 
	R -e 'library(devtools);setwd("..");install("$(NAME)")'

testing: 
	nohup Rscript working_example.R & 