install:
	mkdir /usr/share/texmf-dist/tex/latex/ez-tex/ || true
	cp ez-tex.sty /usr/share/texmf-dist/tex/latex/ez-tex/
	texhash
