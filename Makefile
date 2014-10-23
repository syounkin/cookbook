all: cookbook

cookbook: ./tex/cookbook.tex
	cd tex; pdflatex cookbook.tex
	cd tex; pdflatex cookbook.tex
	cd tex; pdflatex cookbook.tex
	cp -v ./tex/cookbook.pdf ~/Dropbox/cookbook/
	cp -v ./tex/cookbook.pdf ./

clean:
	rm -f ./tex/*.aux
	rm -f ./tex/*.log
	rm -f ./tex/*.toc
	rm -f ./*.aux
	rm -f ./*.log
	rm -f ./*.toc
