#!/bin/bash
all:resume.pdf
resume.pdf:resume.tex
	pdflatex $<
.PHONY:clean
clean:
	-@rm -fv *.aux *.log *.out *.pdf *~
.PHONY:rebuild
rebuild:
	make clean all
.PHONY:FORCE
FORCE:
	pdflatex resume.tex
