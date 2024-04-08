MAKE = make
file = main.tex

all: paper-writting paper-submission

paper-writting:
	pdflatex -jobname $@ "\newcommand{\submitmode}{false}\input{$(file)}"
	pdflatex -jobname $@ "\newcommand{\submitmode}{false}\input{$(file)}"
	bibtex $@
	pdflatex -jobname $@ "\newcommand{\submitmode}{false}\input{$(file)}"
	pdflatex -jobname $@ "\newcommand{\submitmode}{false}\input{$(file)}"

paper-submission:
	pdflatex -jobname $@ "\newcommand{\submitmode}{true}\input{$(file)}"
	pdflatex -jobname $@ "\newcommand{\submitmode}{true}\input{$(file)}"
	bibtex $@
	pdflatex -jobname $@ "\newcommand{\submitmode}{true}\input{$(file)}"
	pdflatex -jobname $@ "\newcommand{\submitmode}{true}\input{$(file)}"

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.pdf

push:
	git push origin master:master
