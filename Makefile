install:
	mkdir /usr/share/texmf-dist/tex/latex/util/ || mkdir /usr/share/texmf/tex/latex/util/ || true
	cp util.sty /usr/share/texmf-dist/tex/latex/util/ || cp util.sty /usr/share/texmf/tex/latex/util/
	texhash
