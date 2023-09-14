timeliness.pdf: *.tex *.bib *.sty figures/* algorithms/*.tex
	xelatex timeliness.tex && \
	bibtex timeliness && \
	xelatex timeliness.tex && \
	xelatex timeliness.tex && \
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

