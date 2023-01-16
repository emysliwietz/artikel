install:
	mkdir -p /usr/share/texmf-dist/tex/latex/artikel/; mkdir -p /usr/share/texmf/tex/latex/artikel/
	cp artikel.cls /usr/share/texmf-dist/tex/latex/artikel/; cp artikel.cls /usr/share/texmf/tex/latex/artikel/
	cp -r ./.fonts/* /home/user/.fonts/
	texhash
