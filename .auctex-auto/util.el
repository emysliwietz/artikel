(TeX-add-style-hook
 "util"
 (lambda ()
   (setq TeX-command-extra-options
         "--shell-escape")
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("babel" "american") ("biblatex" "backend=biber" "style=ieee" "giveninits=true" "uniquename=init") ("caption" "hypcap=true") ("geometry" "a4paper") ("hyperref" "pdfa" "unicode=true" "pdfencoding=unicode" "psdextra" "pdftex" "backref" "pagebackref=false" "bookmarks=true" "bookmarksopen=false" "pdfpagemode=UseNone" "pdftoolbar=false" "pdfmenubar=true" "pdffitwindow=false" "pdfdisplaydoctitle" "pdfborder={1 1 0}" "breaklinks" "colorlinks" "bookmarksopen" "hyperindex") ("fontenc" "T1") ("ulem" "normalem") ("scrlayer-scrpage" "automark" "draft=false" "headwidth=textwithmarginpar" "footwidth=head") ("tcolorbox" "many")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-environments-local "minted")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (TeX-run-style-hooks
    "amsmath"
    "amssymb"
    "amsthm"
    "babel"
    "blindtext"
    "biblatex"
    "booktabs"
    "caption"
    "capt-of"
    "chemfig"
    "csquotes"
    "enumitem"
    "eurosym"
    "float"
    "geometry"
    "grffile"
    "graphicx"
    "hyperref"
    "inputenc"
    "fontenc"
    "fontawesome5"
    "ebproof"
    "etoolbox"
    "enumerate"
    "longtable"
    "marginnote"
    "morewrites"
    "multicol"
    "textcomp"
    "tabularx"
    "titlesec"
    "tikz"
    "tkz-orm"
    "verbatim"
    "wrapfig"
    "rotating"
    "ulem"
    "scrlayer-scrpage"
    "svg"
    "subfiles"
    "subfigure"
    "xcolor"
    "xparse"
    "minted"
    "tcolorbox")
   (TeX-add-symbols
    '("sctrapsmall" ["argument"] 1)
    '("sctrap" ["argument"] 1)
    '("Section" 1)
    '("unote" 1)
    '("note" 1)
    '("Value" 2)
    '("voBinary" 4)
    '("vBinary" 3)
    '("onBinary" 5)
    '("oBinary" 4)
    '("cObjectify" 3)
    '("vObjectify" 1)
    '("Objectify" 1)
    '("vnBinary" 4)
    '("nBinary" 4)
    '("Binary" 3)
    '("Entity" 2)
    '("head" 0)
    '("circled" 1)
    '("blue" 1)
    '("green" 1)
    '("red" 1)
    '("ptrans" 3)
    '("conspr" 0)
    '("whilepr" 0)
    '("ifpr" 0)
    '("comppr" 0)
    '("asspr" 0)
    '("skippr" 0)
    '("pr" 1)
    '("callrecns" 0)
    '("callns" 0)
    '("assns" 0)
    '("nonens" 0)
    '("varns" 0)
    '("blockns" 0)
    '("repeatffns" 0)
    '("repeatttns" 0)
    '("whilettns" 0)
    '("whileffns" 0)
    '("forgtns" 0)
    '("forleqns" 0)
    '("compns" 0)
    '("due" 1)
    '("inlinetodo" 1)
    '("towrite" 1)
    '("N" 2)
    '("B" 2)
    '("A" 2)
    '("sX" 0)
    '("sIX" 0)
    '("sVIII" 0)
    '("sVII" 0)
    '("sVI" 0)
    '("sV" 0)
    '("sIV" 0)
    '("sIII" 0)
    '("sII" 0)
    '("sI" 0)
    '("dtrans" 2)
    '("dv" 2)
    '("nvar" 2)
    '("var" 5)
    '("nblo" 2)
    '("blo" 4)
    '("nwhi" 3)
    '("whi" 4)
    '("nrep" 3)
    '("rep" 4)
    '("nfor" 5)
    '("for" 6)
    '("exch" 3)
    '("trans" 2)
    '("treecolor" 1)
    '("hyp" 2)
    '("n" 1)
    '("m" 1)
    '("power" 1)
    '("seq" 1)
    '("setbuild" 2)
    '("set" 1)
    '("ceil" 1)
    '("floor" 1)
    '("abs" 1)
    '("exerciseinum" 2)
    '("exerciseenum" 2)
    '("exercise" 2)
    "TT"
    "FF"
    "NN"
    "NNp"
    "ZZ"
    "ZZp"
    "QQ"
    "QQp"
    "RR"
    "RRp"
    "CC"
    "supersine"
    "supercosine"
    "isodate"
    "thesistitlepage"
    "HRule"
    "mintinlineold")
   (LaTeX-add-labels
    "#1"
    "#2")
   (LaTeX-add-environments
    "semantic")
   (LaTeX-add-counters
    "subsubsubsection")
   (LaTeX-add-amsthm-newtheorems
    "theorem"
    "corollary"
    "lemma"
    "proposition"
    "definition"
    "remark")
   (LaTeX-add-xparse-macros
    '("\\DeclareDocumentCommand\\subf{ m g }" "subf" " m g " "Declare")))
 :latex)

