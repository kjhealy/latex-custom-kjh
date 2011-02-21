% [latex-custom-kjh](http://kjhealy.github.com/latex-custom-kjh)
% Kieran Healy, Duke University
% 2010-01-07

Keywords:		LaTeX, memoir, listings, custom

# Summary #

Some simple configuration files I use to typeset my papers. At present, includes the following: 

* 	Some page layouts for articles typeset using LaTeX (actually XeLaTeX) and the Memoir class.
*	Some custom style files for use with org-mode and the Emacs Starter Kit, letting you export .org files to .tex files suitable for processing with either pdflatex or xelatex. 
*	A style file for typesetting [Sweave](http://en.wikipedia.org/wiki/Sweave) output using the Listings package.
*	A replacement for using Sweave.sty when writing sweave documents in R/LaTeX (Sweavel.sty). This allows you to directly style Sweave files, rather than having to use the listings style file above.
*	A template for an Article, using the layouts & format files here.
*	A template for a Syllabus, using the layouts & format files here.    

To make use of these files you will need a modern TeX installation, and in particular, 

*	The [Memoir class](http://www.ctan.org/tex-archive/macros/latex/contrib/memoir/).
*	[Biblatex](http://www.ctan.org/tex-archive/help/Catalogue/entries/biblatex.html). 
*	The [Listings package](http://www.ctan.org/tex-archive/macros/latex/contrib/listings/).
*	The [VC](http://www.ctan.org/tex-archive/help/Catalogue/entries/vc.html) package. 

The .sty files in the needs-org-mode directory are meant for use with org-mode as configured in the [Emacs Starter Kit for the Social Sciences](http://kjhealy.github.com/emacs-starter-kit/)

Of course, not all of these packages are needed to use each of the layouts. Only a modern TeX system is really presupposed.

Feel free to extend and improve as you like. 

