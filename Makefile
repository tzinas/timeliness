timeliness.pdf: *.tex *.bib *.sty figures/* algorithms/*.tex
	xelatex -synctex=1 timeliness.tex && \
	bibtex timeliness && \
	xelatex -synctex=1 timeliness.tex && \
	xelatex -synctex=1 timeliness.tex && \
	rm -rf *.aux *.log *.out;

minimal:
	xelatex timeliness.tex

clean:
	$(RM)  *.log *.aux \
	*.cfg *.glo *.idx *.toc \
	*.ilg *.ind *.out *.lof \
	*.lot *.bbl *.blg *.gls *.cut *.hd \
	*.dvi *.ps *.thm *.tgz *.zip *.rpi \
	*.d *.fls *.*.make *.fdb_latexmk *.run.xml \
	*.synctex.gz *.bcf
	$(RM) timeliness.pdf

