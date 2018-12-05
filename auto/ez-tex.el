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
    "stmaryrd"
    "mathtools"
    "graphicx"
    "enumerate"
    "array"
    "amssymb"
    "amsmath"
    "verbatim"
    "tikz"
    "tkz-orm")
   (TeX-add-symbols
    '("sctrapsmall" ["argument"] 1)
    '("sctrap" ["argument"] 1)
    '("Value" 2)
    '("vBinary" 3)
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
    '("repeatffns" 0)
    '("repeatttns" 0)
    '("whilettns" 0)
    '("whileffns" 0)
    '("forgtns" 0)
    '("forleqns" 0)
    '("compns" 0)
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

