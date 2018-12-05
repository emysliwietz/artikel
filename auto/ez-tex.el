(TeX-add-style-hook
 "ez-tex"
 (lambda ()
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (TeX-run-style-hooks
    "listings"
    "xcolor"
    "etoolbox"
    "ebproof"
    "tikz"
    "stmaryrd"
    "mathtools"
    "graphicx"
    "enumerate"
    "tkz-orm"
    "array"
    "amssymb"
    "amsmath"
    "verbatim")
   (TeX-add-symbols
    '("sctrapsmall" ["argument"] 1)
    '("sctrap" ["argument"] 1)
    '("vBinary" 3)
    '("Binary" 3)
    '("Entity" 2)
    '("head" 0)
    '("red" 1)
    '("repeatff" 0)
    '("repeattt" 0)
    '("whilett" 0)
    '("whileff" 0)
    '("forgt" 0)
    '("forleq" 0)
    '("comp" 0)
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
    '("nwhi" 3)
    '("whi" 4)
    '("nrep" 3)
    '("rep" 4)
    '("nfor" 5)
    '("for" 6)
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
    '("exerciseeenum" 2)
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
    "CC")
   (LaTeX-add-environments
    "semantic"))
 :latex)

