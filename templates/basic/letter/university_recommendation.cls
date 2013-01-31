% Customized letter class:  university_recommendation.cls
% calls the class university_letter 
%  hardwires the letters as being from me
% option either "recommendation" (default) or "tenure"

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{university_recommendation}

\RequirePackage{ifthen}

\newboolean{@recommendation}
\newboolean{@tenure}

\setboolean{@tenure}{false}
\setboolean{@recommendation}{true}


\DeclareOption{recommendation}{
	\setboolean{@recommendation}{true}
	\setboolean{@tenure}{false}}
\DeclareOption{tenure}{
	\setboolean{@tenure}{true}
	\setboolean{@recommendation}{false}}


\DeclareOption*{\PassOptionsToClass{\CurrentOption}{university_letter}}

\ProcessOptions
\LoadClass{university_letter}

\renewcommand{\ps@headings} {\setlength{\headheight}{32pt}%
  \renewcommand{\@oddhead} {\parbox{\textwidth}{Healy letter for
      \emph{\toname}\hfill\@date\hfill\pagename{}
      \thepage\\\rule[3pt]{\textwidth}{1pt}}}
  \renewcommand{\@oddfoot}{\sffamily\tiny 255 Sociology/Psychology
    Building, Duke University, Durham, North Carolina 27708,
    USA. Phone: \myphone \,Fax: \myfax.}
  \renewcommand{\@evenhead}{\@oddhead}
  \renewcommand{\@evenfoot}{\@oddfoot}}

\pagestyle{headings}

\renewcommand{\opening}[1]{\thispagestyle{firstpage}
	\hfill \@date \\ \\
	\parbox{\textwidth}{\center\large
          \ifthenelse{\boolean{@tenure}}{\textbf{Tenure Letter}}{}%
          \ifthenelse{\boolean{@recommendation}}{\textbf{Recommendation}}{}
          \textbf{for \scshape{\toname}}}\bigskip \bigskip}
	
	
