all: cookbook dropbox

cookbook: tex/cookbook.tex recipes/grandmas-rice.tex
	cd tex; pdflatex cookbook.tex
	cd tex; pdflatex cookbook.tex
	cd tex; makeindex cookbook
	cd tex; pdflatex cookbook.tex
	mv -v ./tex/cookbook.pdf ./

dropbox: cookbook.pdf
	cp -v cookbook.pdf ~/data/Dropbox/younkin/samuel/cookbook/

clean:
	rm -f ./tex/*.aux
	rm -f ./tex/*.log
	rm -f ./tex/*.toc
	rm -f ./*.aux
	rm -f ./*.log
	rm -f ./*.toc
