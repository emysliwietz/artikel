(TeX-add-style-hook
 "ez-tex"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("ulem" "normalem") ("babel" "american") ("geometry" "a4paper" "left=1.5in" "right=1.5in" "top=1.5in" "bottom=1.5in") ("biblatex" "backend=biber" "style=ieee" "giveninits=true" "uniquename=init")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
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
    "listings"
    "xcolor"
    "etoolbox"
    "ebproof"
    "stmaryrd"
    "mathtools"
    "graphicx"
    "enumerate"
    "enumitem"
    "todonotes"
    "hyperref"
    "array"
    "amssymb"
    "amsthm"
    "inputenc"
    "fontenc"
    "amsmath"
    "verbatim"
    "multicol"
    "float"
    "subfiles"
    "subfigure"
    "grffile"
    "longtable"
    "textcomp"
    "marginnote"
    "wrapfig"
    "rotating"
    "ulem"
    "capt-of"
    "a4wide"
    "chemfig"
    "svg"
    "eurosym"
    "csquotes"
    "babel"
    "geometry"
    "biblatex"
    "titlesec"
    "xparse"
    "blindtext"
    "tikz"
    "tkz-orm")
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
    "subf")
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
    "remark"))
 :latex)

