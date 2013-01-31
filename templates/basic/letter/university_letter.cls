% Customized letter class:  university_letter.cls
% changes the letter class by adding letterhead
% option either "sign" (default) or "nosign"; the sign feature includes your signature
% which must be in a file signature.jpg

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{university_letter}

\RequirePackage{ifthen}
\RequirePackage{fontspec}
\RequirePackage{xunicode}
%% Garamond 3 and Interstate are the official Duke brand typefaces.
%% See
\setromanfont[Mapping=tex-text,Numbers=OldStyle]{Garamond Premier Pro} 
\setsansfont[Mapping=tex-text]{Interstate}  
\setmonofont[Mapping=tex-text,Scale=MatchLowercase]{PragmataPro} 

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
\def\myauthor{Kieran Healy}
\def\mytitle{Vita}
\def\mycopyright{\myauthor}
\def\mybibliostyle{plain}
\def\mysubtitle{}
\def\myaffiliation{Duke University}
\def\myphone{\tiny\sffamily (919) 660-5737}
\def\myfax{\tiny\sffamily (919) 660-5623}
\def\myversion{}
\def\myrevision{}

\setlength{\topmargin}{-1.5cm}
\newsavebox{\tsheader}
\newsavebox{\universitylogo}

\sbox{\universitylogo}{\parbox{\textwidth}{
    \begin{tabular}{l}
     \includegraphics[scale=0.55]{/Users/kjhealy/Documents/projects/letterhead/logos/sociologydept.pdf}
   \end{tabular}}}
		
\sbox{\tsheader}{\parbox[b]{\textwidth}{\usebox{\universitylogo}\raisebox{0cm}}}


\renewcommand{\ps@firstpage}{%
  \setlength{\headheight}{0cm}\setlength{\headsep}{3.5cm}%
  \renewcommand{\@oddhead}{\usebox{\tsheader}}
  \renewcommand{\@oddfoot}{{\sffamily\tiny 268 Sociology/Psychology
      Building, Duke University, Durham, North Carolina 27708, USA. Phone:
      \myphone \,Fax: \myfax.}}%
    \renewcommand{\@evenhead}{}\renewcommand{\@evenfoot}{{\sffamily\tiny 268 Sociology/Psychology
      Building, Duke University, Durham, North Carolina 27708, USA. Phone:
      \myphone \,Fax: \myfax.}}%
  }

\providecommand{\@evenhead}{} \providecommand{\@oddhead}{}
\providecommand{\@evenfoot}{{\sffamily\tiny 268 Sociology/Psychology
      Building, Duke University, Durham, North Carolina 27708, USA. Phone:
      \myphone \,Fax: \myfax.}} \providecommand{\@oddfoot}{}

\pagestyle{headings}


\renewcommand{\closing}[1]{
	\hspace*{4cm}
	\parbox{\textwidth}{
	\ifthenelse{\equal{#1}{}}{}{#1\\}
	\ifthenelse{\boolean{@sign}}{\includegraphics[width=5cm]{/Users/kjhealy/Documents/projects/letterhead/sigs/signature}\\}{\bigskip \bigskip \bigskip \bigskip \bigskip \ifthenelse{\equal{#1}{}}{}{{ }\\}}	
	\raggedright \fromsig}}

\signature{
	Associate Professor in Sociology\\ and the Kenan Institute for Ethics
	\\\url{kjhealy@soc.duke.edu}}
	
