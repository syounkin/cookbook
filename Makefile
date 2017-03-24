all: cookbook dropbox

cookbook: tex/cookbook.tex
	cd tex; pdflatex cookbook.tex
	cd tex; pdflatex cookbook.tex
	cd tex; makeindex cookbook
	cd tex; pdflatex cookbook.tex
	mv -v ./tex/cookbook.pdf ./

dropbox: cookbook.pdf
	cp -v cookbook.pdf ~/Dropbox/cookbook/

clean:
	rm -f ./tex/*.aux
	rm -f ./tex/*.log
	rm -f ./tex/*.toc
	rm -f ./*.aux
	rm -f ./*.log
	rm -f ./*.toc
