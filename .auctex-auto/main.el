(TeX-add-style-hook
 "main"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("IEEEtran" "conference")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("xcolor" "table") ("subfig" "caption=false" "font=normalsize" "labelfont=sf" "textfont=sf") ("ulem" "normalem")))
   (TeX-run-style-hooks
    "latex2e"
    "chapters/intro"
    "chapters/method"
    "chapters/experiments"
    "chapters/related_work"
    "IEEEtran"
    "IEEEtran10"
    "amsmath"
    "amsfonts"
    "algorithmic"
    "array"
    "xcolor"
    "subfig"
    "textcomp"
    "stfloats"
    "url"
    "verbatim"
    "graphicx"
    "booktabs"
    "multirow"
    "ulem"
    "balance"
    "caption"
    "hhline"
    "pgfplotstable"
    "pgfplots"
    "listings"
    "algorithm"
    "blindtext"
    "etoolbox"
    "ifthen")
   (TeX-add-symbols
    '("modify" 1)
    '("para" 2)
    '("main" 1)
    '("note" 1)
    '("add" 1)
    '("del" 1)
    '("rmkdone" 1)
    '("rmk" 1)
    '("equal" 2)
    "BibTeX")
   (LaTeX-add-bibliographies
    "ref"))
 :latex)

