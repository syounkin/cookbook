all: cookbook

cookbook: cookbook.tex
	pdflatex cookbook.tex
	pdflatex cookbook.tex
	pdflatex cookbook.tex

clean:
	rm -f ./*.aux
	rm -f ./*.log
	rm -f ./*.toc
