install:
	mkdir -p /usr/share/texmf-dist/tex/latex/util/; mkdir -p /usr/share/texmf/tex/latex/util/
	cp util.sty /usr/share/texmf-dist/tex/latex/util/; cp util.sty /usr/share/texmf/tex/latex/util/
	texhash
