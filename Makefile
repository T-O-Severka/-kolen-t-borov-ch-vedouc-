all: xelatex booklet clean
xelatex:
	xelatex pedagogika.tex
	xelatex pedagogika.tex
booklet:
	pdfbook2 pedagogika.pdf
clean:
	rm -f *.out *aux *bbl *blg *log *toc *.ptb *.tod *.fls *.fdb_latexmk *.lof pedagogika.zip
cleanall:
	rm -f *.pdf *.out *aux *bbl *blg *log *toc *.ptb *.tod *.fls *.fdb_latexmk *.lof
zip:
	zip pedagogika pedagogika.tex styl.sty reference.bib zdroje/* pedagogika.pdf pedagogika-book.pdf
