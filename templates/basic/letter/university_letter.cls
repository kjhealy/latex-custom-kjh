% Customized letter class:  university_letter.cls
% changes the letter class by adding letterhead
% option either "sign" (default) or "nosign"; the sign feature includes your signature
% which must be in a file signature.jpg

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{university_letter}

\RequirePackage{ifthen}
\RequirePackage{fontspec}
\RequirePackage{xunicode}
\setromanfont[Mapping=tex-text,Numbers=OldStyle]{Old Style 7 Std} 
\setsansfont[Mapping=tex-text]{Interstate}  
\setmonofont[Mapping=tex-text,Scale=0.8]{Pragmata} 

\newboolean{@sign}

% Defaults:  signed 
\setboolean{@sign}{true}

\DeclareOption{sign}{
	\setboolean{@sign}{true}}
\DeclareOption{nosign}{
	\setboolean{@sign}{false}}


\DeclareOption*{\PassOptionsToClass{\CurrentOption}{letter}}

\ProcessOptions
\LoadClass{letter}


%\RequirePackage{times}
\RequirePackage{graphicx}
\RequirePackage{url}

\setlength{\topmargin}{-1.5cm}

\newsavebox{\tsheader}
\newsavebox{\universitylogo}

\def\myauthor{Kieran Healy}
\def\mytitle{Vita}
\def\mycopyright{\myauthor}
\def\mykeywords{}
\def\mybibliostyle{plain}
\def\mybibliocommand{}
\def\mysubtitle{}
\def\myaffiliation{Duke University}
\def\myaddress{Sociology Department}
\def\myemail{kjhealy@soc.duke.edu}
\def\myweb{http://www.kieranhealy.org}
\def\myphone{\scriptsize\sffamily (919) 660-5737}
\def\myfax{\scriptsize\sffamily (919) 660-5623}
\def\myversion{}
\def\myrevision{}


\def\myaffiliation{Duke University}
\def\myauthor{Kieran Healy}
\date{} % not used (revision control instead)
\def\mykeywords{}


\sbox{\universitylogo}{\parbox{\textwidth}{
%here I put code to replicate my department's letterhead 
    \begin{minipage}[b]{0.5\linewidth}\centering
  \begin{tabular}{l}
  \includegraphics[scale=0.45]{/Users/kjhealy/Documents/projects/duke-letterhead/sociologydept.pdf}
\end{tabular}
\end{minipage}
\hspace{0.5cm}
\begin{minipage}[t]{0.5\linewidth}
  \centering
  \begin{tabular}{r}
    {\sffamily\scriptsize 268 Soc/Psych Bldg, Durham, NC 27708.\\ 
      \sffamily\scriptsize P:\myphone \,F:\myfax}
  \end{tabular}
\end{minipage}}}
			
\sbox{\tsheader}{\parbox[b]{\textwidth}{\usebox{\universitylogo}\raisebox{0cm}}}


\renewcommand{\ps@firstpage}{%
	\setlength{\headheight}{0cm}\setlength{\headsep}{3.5cm}%
	\renewcommand{\@oddhead}{\usebox{\tsheader}}
		\renewcommand{\@oddfoot}{}%
		\renewcommand{\@evenhead}{}\renewcommand{\@evenfoot}{}%
		}

\providecommand{\@evenhead}{} \providecommand{\@oddhead}{}
\providecommand{\@evenfoot}{} \providecommand{\@oddfoot}{}

\pagestyle{headings}


\renewcommand{\closing}[1]{
	\hspace*{4cm}
	\parbox{\textwidth}{
	\ifthenelse{\equal{#1}{}}{}{#1\\}
	\ifthenelse{\boolean{@sign}}{\includegraphics[width=5cm]{/Users/kjhealy/Documents/projects/duke-letterhead/signature}\\}{\bigskip \bigskip \bigskip \bigskip \bigskip \ifthenelse{\equal{#1}{}}{}{{ }\\}}	
	\raggedright \fromsig}}

\signature{
	%<my name and rank>
	\\\url{
	%<my email address>
	}}
	