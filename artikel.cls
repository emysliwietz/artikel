% artikel.cls - Class for university theses and assignments and essays.
% Collection for all kinds of latex commands I reuse
%
% <–––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––>
% This is file is free software and may be distributed and/or modified
%
% 1. under the LaTeX Project Public License and/or
% 2. under the GNU Public License.
%
% Copyleft 2018 by Egidius Mysliwietz
% large parts of this document are shamelessly stolen
% from Dr. Engelbert Hubbers and various other authors
% <–––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––>
\ProvidesClass{artikel}[2022--12--20 Class for RU Theses and Assignments]
% formerly: \ProvidesPackage{util}[2018/11/30 v2.0.0 personal shortcuts]
\NeedsTeXFormat{LaTeX2e}
% <–––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––>

\RequirePackage{ifthen}
\newcommand{\superclass}{scrartcl}
\newif\iffancy\fancyfalse
\DeclareOption{fancy}{\fancytrue}

\newif\ifmodern\modernfalse
\DeclareOption{modern}{\moderntrue}

\newif\iftwocolumn\twocolumnfalse
\DeclareOption{twocolumn}{\twocolumntrue}

\newif\ifcompact\compactfalse
\DeclareOption{compact}{\compacttrue}

\newif\ifthesis\thesisfalse
\DeclareOption{thesis}{\thesistrue}

\newif\ifdraft\draftfalse
\DeclareOption{draft}{\drafttrue}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\superclass}}
\ProcessOptions\relax

\LoadClass{\superclass}

% List of Requirements
\RequirePackage{lettrine}
\RequirePackage{shapepar}
%\RequirePackage[pages=absolute]{flowfram}
\RequirePackage[all]{nowidow}
\RequirePackage{amsmath}         % Provides extended mathematical environments and commands
\RequirePackage[textsize=scriptsize]{todonotes}
\RequirePackage{amssymb}         % Provides additional mathematical symbols
\RequirePackage{amsthm}          % Provides additional environments and commands for typesetting mathematical proofs
\RequirePackage{kantlipsum}      % Provides the \kant command to produce blindtext
\RequirePackage{booktabs}        % Provides commands for typesetting tables
\RequirePackage[hypcap=true]{caption} % Customize the captions
\RequirePackage{environ}

\RequirePackage{chemfig}         % Provides support for typesetting chemical structures
\RequirePackage{csquotes}        % Provides commands for typesetting quotations
\RequirePackage{enumitem}        % Provides an enhanced version of the enumerate environment
\RequirePackage{eurosym}         % Provides the euro symbol
\RequirePackage{float}           % Provides additional options and commands for floating objects
\iftwocolumn
\RequirePackage[
left=3cm,
right=3cm,
top=2.25cm,
bottom=2.25cm,
headheight=12pt,
a4paper,
]{geometry}
\else
\RequirePackage[a4paper]{geometry} % Provides commands for customizing page layout
\fi
\RequirePackage{grffile}         % Fix allowed filenames
\RequirePackage{graphicx}        % Support for including and manipulating graphics
\RequirePackage[
pdfa,
unicode=true, % loads with unicode support
pdfencoding=unicode,
psdextra, % loads replacements for some maths
% a4paper=true, %
luatex, %
backref, %
pagebackref=false, % creates backward references too
bookmarks=true, % generate bookmarks in PDF files
bookmarksopen=false, % when starting with AcrobatReader, the Bookmarkcolumn is opened
pdfpagemode=UseNone,% UseNone, UseOutlines, UseThumbs, FullScreen
pdftoolbar=false,
pdfmenubar=true,
pdffitwindow=false,
pdfdisplaydoctitle,
pdfborder={1 1 0},
breaklinks, % (here, onwards) for pdfx
colorlinks,
bookmarksopen,
hyperindex]{hyperref} % Provides support for hypertext links within LaTeX documents
\RequirePackage[nameinlink]{cleveref}
\RequirePackage{fontawesome5}    % Provides the FontAwesome 5 icon set
\RequirePackage{ebproof}         % Natural deduction proof formatting
\RequirePackage{etoolbox}        % Collection of programming tools for LaTeX
\RequirePackage{enumerate}       % Enhanced version of the enumerate environment
\RequirePackage{longtable}       % Provides the longtable environment for typesetting tables that may span multiple pages
\RequirePackage{marginnote}      % Provides commands for typesetting marginal notes
\RequirePackage{morewrites}      % Provides an extension to the LaTeX kernel's output routine
\RequirePackage{multicol}        % Provides the multicolumn layout environment
\RequirePackage{iftex}           % Check for Latex compiler used (pdflatex, xelatex, lualatex)
\RequirePackage{textcomp}        % Provides additional text symbols
\RequirePackage{tabularx}        % Provides the tabularx environment for typesetting tables with fixed width columns
%\RequirePackage{titlesec}        % Provides abiltiy to change the style of the title
\RequirePackage{tikz}             % Provides support for creating vector graphics using the TikZ drawing library
\usetikzlibrary{shapes}
\usetikzlibrary{positioning,fit,calc}
\usetikzlibrary{arrows}
\RequirePackage{tkz-orm}
\RequirePackage{verbatim}        % Provides the verbatim environment for typesetting program code
\RequirePackage{wrapfig}         % Provides support for wrapping text around figures
\RequirePackage{rotating}        % Provides support for rotating objects
\RequirePackage[normalem]{ulem}  % Provides additional commands for underlining text, such as strikethrough
\RequirePackage[automark,draft=false,headwidth=textwithmarginpar,footwidth=head]{scrlayer-scrpage} % scrtcl headers and footers, among other things
\RequirePackage{svg}              % Provides support for including SVG graphics
\RequirePackage{subfiles}         % Provides support for compiling "subfiles" (i.e., individual LaTeX files that are part of a larger project)
\RequirePackage{xcolor}           % Interface for defining and using color in LaTeX
\RequirePackage{xparse}           % Provides an enhanced version of LaTeX's kernel commands for defining new commands
\RequirePackage{lipsum}           % Provides Lorem Ipsum text with the \lorem command

\providecommand{\maintitle}{Main Title}
\providecommand{\subtitle}{Subtitle}
\providecommand{\uni}{Radboud University Nijmegen}
\providecommand{\faculty}{Digital Security Group}
\providecommand{\papertype}{Master Thesis}
\providecommand{\authorfirst}{Egidius}
\providecommand{\authorsecond}{Mysliwietz}
\providecommand{\thesissupervisorfirst}{}
\providecommand{\thesissupervisorsecond}{}
\providecommand{\thesissecondreaderfirst}{}
\providecommand{\thesissecondreadersecond}{}
\makeatletter
\def\thesisdate{\@date}
\makeatother
\title{\maintitle{} \\ {\small \subtitle{}}}
\author{\authorfirst{} \authorsecond{}}
\date{\today}

\makeatletter
% Include chapters, chapter and headers subfolders into PATH for \input
\def\input@path{{./}{./chapters}{./chapter}{./headers}}
\makeatother
\graphicspath{{img/}}

\DeclareDocumentCommand\subf{ m g }{%
  {%
    \IfNoValueT{#2} {\label{#1}}%
    \IfNoValueF{#2} {\label{#2}}%
    \subfile{sections/#1}
  }%
}

\ifpdftex

\RequirePackage[american]{babel} % Provides support for multilingual typesetting
\RequirePackage{inputenc}        % Provides support for input encoding (e.g., for typing special characters)
\RequirePackage[T1]{fontenc}     % Provides support for font encoding

\fi

\iftutex

\RequirePackage{fontspec}
\RequirePackage{polyglossia}
% usmax is same as us/american, but with additional hyphenation patterns
\setmainlanguage[variant=usmax]{english}
\setotherlanguage[variant=german, spelling=new, script=latin]{german} %or script=blackletter
\setotherlanguage[variant=ecclesiastic, hyphenation=liturgical, usej=false]{latin}
\setotherlanguage[numerals=hebrew, calendar=hebrew, transliteration=academy]{hebrew}
\setotherlanguage[variant=ancient, numerals=greek, attic=true]{greek}

\newenvironment{churchlatin}
{\begin{latin}[variant=ecclesiastic, hyphenation=liturgical, usej=false]}
  {\end{latin}}

\newenvironment{classicallatin}
{\begin{latin}[variant=classic]}
  {\end{latin}}

\newenvironment{ancientgreek}
{\begin{greek}[variant=ancient, numerals=greek]}
  {\end{greek}}

%\defaultfontfeatures{Scale=MatchLowercase} % Makes all fonts match the lowercase of the main font by default
\defaultfontfeatures[\rmfamily]{Scale=1} % Roman font keeps its size (as all other fonts are relative to it)

\RequirePackage{microtype}
\RequirePackage{realscripts}
\RequirePackage[cmintegrals, cmbraces]{newtxmath}

\fi

\RequirePackage[backend=biber, style=ieee, giveninits=true, uniquename=init]{biblatex} % Bibliographic package

\iftutex
% Extra light
\DeclareRobustCommand\xlseries{\fontseries{xl}\selectfont}
\DeclareTextFontCommand{\textxl}{\xlseries}
% Light
\DeclareRobustCommand\lseries{\fontseries{l}\selectfont}
\DeclareTextFontCommand{\textl}{\lseries}
% Medium
\DeclareRobustCommand\mbseries{\fontseries{mb}\selectfont}
\DeclareTextFontCommand{\textmb}{\mbseries}
% Semibold
\DeclareRobustCommand\sbseries{\fontseries{sb}\selectfont}
\DeclareTextFontCommand{\textsb}{\mbseries}
% Demibold
\DeclareRobustCommand\dbseries{\fontseries{db}\selectfont}
\DeclareTextFontCommand{\textdb}{\mbseries}
% Black
\DeclareRobustCommand\kseries{\fontseries{k}\selectfont}
\DeclareTextFontCommand{\textk}{\kseries}
\DeclareTextFontCommand{\textbl}{\kseries}

\newcommand{\lmr}{\fontfamily{lmr}\selectfont} % Latin Modern Roman
\newcommand{\lmss}{\fontfamily{lmss}\selectfont} % Latin Modern Sans
\newcommand{\lmtt}{\fontfamily{lmtt}\selectfont} % Latin Modern Mono

\strongfontdeclare{\xlseries,\mbseries}
\strongfontdeclare{\lseries,\sbseries}
\strongfontdeclare{\mbseries,\bfseries}
\strongfontdeclare{\sbseries,\bfseries}
\strongfontdeclare{\dbseries,\bfseries}
\strongfontdeclare{\bfseries,\kseries}
\fi

\ifpdftex
\iffancy
\RequirePackage{ebgaramond}
\RequirePackage{ebgaramond-maths}
\fi\fi
\iftutex

\providefontfamily{\EBGaramond}{EBGaramond}[
Path = /home/user/.fonts/EBGaramond/,
Scale = 1,
Extension = .otf,
UprightFont = *12-Regular, % set EB Garamond 12 as default upright font
UprightFeatures = {
  SizeFeatures = {
    {Size = -10.1,
      Font = *08-Regular}, % use EB Garamond 08 for 10pt size and smaller
    {Size = 10.1-}
  }
}, % use default upright font for larger than 10pt size
ItalicFont = *12-Italic, % set EB Garamond 12 as default italic font
ItalicFeatures = {
  SizeFeatures = {
    {Size = -10.1,
      Font = *08-Italic}, % use EB Garamond 08 for 10pt size and smaller
    {Size = 10.1-}
  }
}, % use default italic font for larger than 10pt size
SmallCapsFeatures = {Letters = SmallCaps},
Ligatures = {Common, TeX},
Numbers = {Proportional, OldStyle},
RawFeature = {-locl}
%RawFeature = {+ss06,+clig,+frac,+dlig,+liga,+calt,+cv04,+cv05,+cv06,+cv11,+c2sc,+scmp},
]
\iffancy
\setmainfont{EBGaramond}
\setsansfont{EBGaramond} % Change to Optima
\newfontfamily\greekfont{EBGaramond}
\else
\setmainfont{Linux Libertine O}
\setsansfont{Linux Libertine O} % Switch to Sans
\newfontfamily\greekfont{Linux Libertine O}
\fi

\setlist[itemize]{label={\large $\bullet$}, labelsep=3mm}

\providefontfamily{\EBGaramondInitials}{EBGaramond-Initials}[
Path = /home/user/.fonts/EBGaramond/,
Extension = .otf,
]

\providefontfamily{\EBGaramondWhiteInitials}{EBGaramond-Initials}[
Path = /home/user/.fonts/EBGaramond/,
Extension = .otf,
UprightFont = *F1
]

\providefontfamily{\EBGaramondTextInitials}{EBGaramond-Initials}[
Path = /home/user/.fonts/EBGaramond/,
Extension = .otf,
UprightFont = *F2
]

\providefontfamily{\SourceCodePro}{SourceCodePro}[
Path = /home/user/.fonts/SourceCodePro/,
Extension = .otf,
UprightFont = *-Regular,
BoldFont = *-Bold,
ItalicFont = *-It,
BoldItalicFont = *-BoldIt,
FontFace = {xl}{n}{*-ExtraLight},
FontFace = {xl}{it}{*-ExtraLightIt},
FontFace = {l}{n}{*-Light},
FontFace = {l}{it}{*-LightIt},
FontFace = {mb}{n}{*-Medium},
FontFace = {mb}{it}{*-MediumIt},
FontFace = {sb}{n}{*-Semibold},
FontFace = {sb}{it}{*-SemiboldIt},
FontFace = {k}{n}{*-Black},
FontFace = {k}{it}{*-BlackIt},
Scale=MatchLowercase,
]
\iffancy
\setmonofont{SourceCodePro}
\fi

\providefontfamily{\Arial}{Arial}[
Path = /home/user/.fonts/Arial/,
Extension = .otf,
UprightFont = *,
AutoFakeBold,
AutoFakeSlant,
]

\providefontfamily{\TimesNewRoman}{TimesNewRoman}[
Extension = .otf,
Path = /home/user/.fonts/TimesNewRoman/,
UprightFont = *,
AutoFakeBold,
AutoFakeSlant,
]

\fi

\providecommand{\RUlogo}{\includegraphics[width=25mm]{img/in_dei_nomine_feliciter.eps}}
\providecommand{\textRUlogo}{\raisebox{0pt}[0pt][0pt]{\scalebox{.33}{\RUlogo}}}

\iftutex
\providefontfamily{\starcorporate}{Corporate}[
Path = /home/user/.fonts/Corporate/,
Extension = .otf,
UprightFont = *E-Regular,
SmallCapsFont = *E-SC-Regular,
FontFace={l}{n}{*S-Light-Regular},
]
\newcommand{\segp}{{\starcorporate{} \textsc{Star Cooperation\raisebox{.45ex}{\scalebox{.5}{®}}}}}
\newcommand{\starlogo}{{%
\begin{minipage}[c][\arraycolsep][t]{.3\linewidth}
  \begin{center}
    \segp{} \\\vspace{-1.6ex}\rule{8.75em}{.2pt}\\\vspace{-1.3ex} \starcorporate\textl{} \scalebox{.44}{Your Partners in Excellence}
  \end{center}
\end{minipage}}}

\newcommand{\textstarlogo}{%_
% Magic number of .57cm to make logo appear vertically centered in logo
\raisebox{.57cm}{\starlogo}
}

\fi

\newcommand{\compiler}{\ifpdftex pdf\TeX\else\ifluatex lua\TeX\else\ifxetex \XeTeX\fi\fi\fi}

\newcommand{\red}[1]{{\color{red}{#1}}}
\newcommand{\blue}[1]{{\color{blue}{#1}}}
\newcommand{\yellow}[1]{{\color{yellow}{#1}}}
\newcommand{\grey}[1]{{\color{gray}{#1}}}
\newcommand{\gray}[1]{{\color{gray}{#1}}}
\newcommand{\green}[1]{{\color{green}{#1}}}
\newcommand{\white}[1]{{\color{white}{#1}}}
\newcommand{\orange}[1]{{\color{orange}{#1}}}
\newcommand{\purple}[1]{{\color{purple}{#1}}}
\newcommand{\pink}[1]{{\color{pink}{#1}}}

% Using TeX command definition instead of Latex to make word capitilization work better
\def\drop #1#2 {% space before { is required
  \lettrine[lines=2]{\EBGaramondTextInitials{}#1}{#2} % trailing space
}

% Same command, but does not force EB Garamond Text
\def\drop* #1#2 {% space before { is required
  \lettrine[lines=2]{#1}{#2} % trailing space
}

% Use Black Initials instead
\def\fancydrop #1#2 {% space before { is required
  \lettrine[lines=2]{\EBGaramondInitials{}#1}{#2} % trailing space
}
%\providecommand{\Section}[1]{\section{#1}\drop}
%\providecommand{\Section*}[1]{\section{#1}\drop*}

% Trapezii
\newcommand{\sctrap}[2][1cm]{
  \begin{tikzpicture}%
 \node[xshift=2cm,yshift=-3cm,draw,trapezium,text width=#1,align=center,shape border rotate=180]{\ensuremath{#2}};%
 \end{tikzpicture}%
 \vspace*{-0.10cm}%
}

% Small Trapezoid
\newcommand{\sctrapsmall}[2][1cm]{
\resizebox{!}{0.7\baselineskip}{\sctrap[#1]{#2}}
}

% Circle around text
\DeclareRobustCommand\circled[1]{\tikz[baseline=(char.base)]{
            \node[shape=circle,draw,inner sep=2pt] (char) {#1};
}}

\newenvironment{compactitemize}{\begin{itemize}[noitemsep]}{\end{itemize}}
\newenvironment{compactenumerate}{\begin{itemize}[noitemsep]}{\end{itemize}}

% Refine these compact versions as default in compact document
\ifcompact
\let\oldenumerate\enumerate
\let\endoldenumerate\endenumerate
\renewenvironment{enumerate}{\oldenumerate[noitemsep]}{\endoldenumerate}
\fi

% ensure tables have correct text colour
%\AtBeginEnvironment{tabular}{\color{green}}

% Code blocks
\RequirePackage{minted}
\RequirePackage[many]{tcolorbox}

  \setminted{
	frame=none,
	% framesep=2mm,
	baselinestretch=1.2,
	fontsize=\footnotesize,
	highlightcolor=page!95!text!80!primary,
	linenos,
	breakanywhere=true,
	breakautoindent=true,
	breaklines=true,
	tabsize=4,
	xleftmargin=3.5em,
	autogobble=true,
	obeytabs=true,
	python3=true,
	% texcomments=true,
	framesep=2mm,
	breakbefore=\\\.+,
	breakafter=\,
  }

  \BeforeBeginEnvironment{minted}{
	\begin{tcolorbox}[
	  enhanced,
	  overlay={\fill[page!90!text] (frame.south west) rectangle ([xshift=2.8em]frame.north west);},
	  colback=page!95!text,
	  colframe=page!95!text, % make frame colour same as background
	  breakable,% Allow page breaks
	  arc=0pt,outer arc=0pt,sharp corners, % sharp corners
	  boxsep=0pt,left=0pt,right=0pt,top=0pt,bottom=0pt % no margin/paddding
	  ]
	}
	\AfterEndEnvironment{minted}{\end{tcolorbox}}


  \renewcommand\theFancyVerbLine{\color{text!60!page}\arabic{FancyVerbLine}} % minted line numbering

  \let\mintinlineold\mintinline
  \setmintedinline{breaklines,bgcolor={}}
  % FIXME: issue with line breaking (it doesn't)
  \DeclareTotalTCBox{\mintinline}{v v}{
	nobeforeafter,tcbox raise base,
	enhanced, frame hidden, arc=3pt,
	boxsep=0pt,left=3pt,right=3pt,top=2pt,bottom=2pt, % minimal margin/paddding
	colback=page!94!text,
	outer arc=0pt,
	leftrule=0pt,rightrule=0pt,toprule=0pt,bottomrule=0pt
  }{\mintinlineold{#1}{#2}}

\newcommand{\isodate}{\the\year-\ifnum\month<10\relax0\fi\the\month-\ifnum\day<10\relax0\fi\the\day}

\NewCommandCopy{\toc}{\tableofcontents}
\renewcommand{\tableofcontents}{\pagenumbering{Roman}\toc\clearpage\pagenumbering{arabic}}

\renewcommand\thesection{\Roman{section}} % Roman numerals for the sections
\renewcommand\thesubsection{\roman{subsection}} % roman numerals for subsections
\renewcommand\thesubsubsection{\alph{subsubsection}} % alphabetic numerals for subsubsections

\providecommand{\logo}{}
\providecommand{\accentcolor}{\color{black}}
\pagestyle{scrheadings}
\KOMAoptions{headsepline=2pt, headwidth=textwithmarginpar, footsepline=.2pt:4cm, clines}
\rohead*{%
  \raisebox{\dimexpr-2pt-\dp\strutbox\relax}[0pt][0pt]
  {\accentcolor\rule{1pt}{\dimexpr24pt+\dp\strutbox\relax}}%
  \hspace{0.8em}%
  \rightmark
}
\chead{$\bullet$ \maintitle{} $\bullet$}
\ihead{\logo}
\setkomafont{pagehead}{\normalfont\scshape}
\setkomafont{headsepline}{\color{black!20!white}}

% To make the accented line appear above the grey line
\RemoveLayersFromPageStyle{scrheadings}{scrheadings.head.below.line}
\AddLayersAtBeginOfPageStyle{scrheadings}{scrheadings.head.below.line}

\ifmodern
\colorlet{sectioncolor}{black!20}
\makeatletter
\renewcommand\sectionlinesformat[4]{%
  \colorbox{sectioncolor}{%
    \parbox[t]{\dimexpr\linewidth-2\fboxsep\relax}{%
      \raggedsection\color{black}\@hangfrom{#3}{#4}%
    }}}
\makeatother
\fi

\iftwocolumn
\setlength{\columnsep}{2em}
\tolerance=9999
\fi

\ifdraft
\overfullrule=10mm
\fi

% Link to other word \goto{there}{Text}
% Or optionally define label for this word at the same time
% \goto[here]{there}{Text}
\newcommand{\goto}[3][]{%
  \ifthenelse{\equal{#1}{}}
  {\hyperlink{#2}{#3}}
  {\hypertarget{#1}{\hyperlink{#2}{#3}}}
}

% Creating exercises for assignments
\newcommand{\exercise}[2]{\subsection*{Exercise #1}{#2}}
\newcommand{\exerciseenum}[2]{\subsection*{Exercise #1}{\begin{enumerate}[(a)]#2\end{enumerate}}}
\newcommand{\exerciseinum}[2]{\subsection*{Exercise #1}{\begin{enumerate}[(i)]#2\end{enumerate}}}

% Math stuff
\newcommand{\abs}[1]{\ensuremath{\left|\, #1 \,\right|}}
\newcommand{\floor}[1]{\ensuremath{\left\lfloor\, #1 \,\right\rfloor}}
\newcommand{\ceil}[1]{\ensuremath{\left\lceil\, #1 \,\right\rceil}}
\newcommand{\set}[1]{\ensuremath{\left{{#1}\right}}}
\newcommand{\setbuild}[2]{\ensuremath{\set{{#1}\mid{#2}}}}
\newcommand{\seq}[1]{\ensuremath{\left{{#1}\right}}}
\newcommand{\TT}{\ensuremath{\mathbb{T}}}
\newcommand{\FF}{\ensuremath{\mathbb{F}}}
\newcommand{\NN}{\ensuremath{\mathbb{N}}}
\newcommand{\NNp}{\ensuremath{\mathbb{N}^{+}}}
\newcommand{\ZZ}{\ensuremath{\mathbb{Z}}}
\newcommand{\ZZp}{\ensuremath{\mathbb{Z}^{+}}}
\newcommand{\QQ}{\ensuremath{\mathbb{Q}}}
\newcommand{\QQp}{\ensuremath{\mathbb{Q}^{+}}}
\newcommand{\RR}{\ensuremath{\mathbb{R}}}
\newcommand{\RRp}{\ensuremath{\mathbb{R}^{+}}}
\newcommand{\CC}{\ensuremath{\mathbb{C}}}
\newcommand{\power}[1]{\ensuremath{{\cal P}\left({#1}\right)}}

% abbreviations for text formatings
\newcommand{\m}[1]{\ensuremath{\mbox{~#1~}}}
\newcommand{\n}[1]{\ensuremath{\mbox{\textit{#1}}}}

% Curly functions
\newcommand{\A}[2]{\ensuremath{\mathcal{A}\llbracket#1\rrbracket#2}}
\newcommand{\B}[2]{\ensuremath{\mathcal{B}\llbracket#1\rrbracket#2}}
\newcommand{\N}[2]{\ensuremath{\mathcal{N}\llbracket#1\rrbracket#2}}

%% MATH OPERATORS
\DeclareMathOperator{\supersine}{supersin}
\DeclareMathOperator{\supercosine}{supercos}

% State abbreviations
\newcommand{\sI}[0]{\ensuremath{s^{\prime}}}
\newcommand{\sII}[0]{\ensuremath{s^{\prime\prime}}}
\newcommand{\sIII}[0]{\ensuremath{s^{\prime\prime\prime}}}
\newcommand{\sIV}[0]{\ensuremath{s^{\prime\prime\prime\prime}}}
\newcommand{\sV}[0]{\ensuremath{s^{\prime\prime\prime\prime\prime}}}
\newcommand{\sVI}[0]{\ensuremath{s^{\prime\prime\prime\prime\prime\prime}}}
\newcommand{\sVII}[0]{\ensuremath{s^{\prime\prime\prime\prime\prime\prime\prime}}}
\newcommand{\sVIII}[0]{\ensuremath{s^{\prime\prime\prime\prime\prime\prime\prime\prime}}}
\newcommand{\sIX}[0]{\ensuremath{s^{\prime\prime\prime\prime\prime\prime\prime\prime\prime}}}
\newcommand{\sX}[0]{\ensuremath{s^{\prime\prime\prime\prime\prime\prime\prime\prime\prime\prime}}}

% abbreviations for prooftrees
\newcommand{\hyp}[2]{\infer[no rule]0[#2]{#1}}
\newcommand{\treecolor}[1]{\rewrite{\color{#1}\box\treebox}}


% derivation commands for natural semantics of the course Semantics & Correctness
\newcommand{\trans}[2]{\ensuremath{\langle#1\rangle\to#2}}
\newcommand{\exch}[3]{\ensuremath{[#1 \mapsto \A{#2}#3]}}

\newcommand{\for}[6]{\ensuremath{\langle\mbox{for~} #1 := #2 \m{to} #3 \m {do} #4, #5\rangle \to #6}}
\newcommand{\nfor}[5]{\ensuremath{\mbox{for~} #1 := #2 \m{to} #3 \m {do} #4, #5}}

\newcommand{\rep}[4]{\ensuremath{\langle \mbox{repeat~} #1 \m{until} #2, #3\rangle \to #4}}
\newcommand{\nrep}[3]{\ensuremath{\mbox{repeat~} #1 \m{until} #2, #3}}

\newcommand{\whi}[4]{\ensuremath{\langle \mbox{while~} #1 \m{do} #2, #3\rangle\to #4}}
\newcommand{\nwhi}[3]{\ensuremath{\mbox{while~} #1 \m{do} #2, #3}}

\newcommand{\blo}[4]{\ensuremath{\langle \mbox{begin} #1 #2 \mbox{~end}, #3
    \rangle \to #4}}
\newcommand{\nblo}[2]{\ensuremath{\mbox{begin} #1 #2 \mbox{~end}}}
\newcommand{\var}[5]{\ensuremath{\langle\mbox{var~} #1 := #2; #3, #4\rangle \to_D #5}}
\newcommand{\nvar}[2]{\ensuremath{\mbox{~var~} #1 := #2;~}}
\newcommand{\dv}[2]{\ensuremath{[\{#1\} \mapsto #2]}}
\newcommand{\dtrans}[2]{\ensuremath{\langle#1\rangle\to_D#2}}

% NS rules
\newcommand{\compns}[0]{\ensuremath{\left[\mbox{comp}_{\mbox{ns}}\right]}}
\newcommand{\forleqns}[0]{\ensuremath{\left[\mbox{for-to-do}_{\mbox{ns}}^{\mbox{leq}}\right]}}
\newcommand{\forgtns}[0]{\ensuremath{\left[\mbox{for-to-do}_{\mbox{ns}}^{\mbox{gt}}\right]}}
\newcommand{\whileffns}[0]{\ensuremath{\left[\mbox{while}_{\mbox{ns}}^{\mathbf{ff}}\right]}}
\newcommand{\whilettns}[0]{\ensuremath{\left[\mbox{while}_{\mbox{ns}}^{\mathbf{tt}}\right]}}
\newcommand{\repeatttns}[0]{\ensuremath{\left[\mbox{repeat-until}_{\mbox{ns}}^{\mathbf{tt}}\right]}}
\newcommand{\repeatffns}[0]{\ensuremath{\left[\mbox{repeat-until}_{\mbox{ns}}^{\mathbf{ff}}\right]}}
\newcommand{\blockns}[0]{\ensuremath{\left[\mbox{block}_{\mbox{ns}}\right]}}
\newcommand{\varns}[0]{\ensuremath{\left[\mbox{var}_{\mbox{ns}}\right]}}
\newcommand{\nonens}[0]{\ensuremath{\left[\mbox{none}_{\mbox{ns}}\right]}}
\newcommand{\assns}[0]{\ensuremath{\left[\mbox{ass}_{\mbox{ns}}\right]}}
\newcommand{\callns}[0]{\ensuremath{\left[\mbox{call}_{\mbox{ns}}\right]}}
\newcommand{\callrecns}[0]{\ensuremath{\left[\mbox{call}^{\mbox{rec}}_{\mbox{ns}}\right]}}

% The same but for Hoare semantics
% p indicates hoare, r stands for rule
% You can either use \pr{if} or \ifpr, etc
\newcommand{\pr}[1]{\ensuremath{\left[\mbox{#1}_{\mbox{p}}\right]}}
\newcommand{\skippr}[0]{\ensuremath{\left[\mbox{skip}_{\mbox{p}}\right]}}
\newcommand{\asspr}[0]{\ensuremath{\left[\mbox{ass}_{\mbox{p}}\right]}}
\newcommand{\comppr}[0]{\ensuremath{\left[\mbox{comp}_{\mbox{p}}\right]}}
\newcommand{\ifpr}[0]{\ensuremath{\left[\mbox{if}_{\mbox{p}}\right]}}
\newcommand{\whilepr}[0]{\ensuremath{\left[\mbox{while}_{\mbox{p}}\right]}}
\newcommand{\conspr}[0]{\ensuremath{\left[\mbox{cons}_{\mbox{p}}\right]}}

\newcommand{\ptrans}[3]{\ensuremath{\set{#1}~#2~\set{#3}}}


% I want to use \@currenvir to make the rules dependant on the environment, so
% \comp will mean \compns in semantic-ns, but \compp in semantic-p. However, I have no clue how to do this yet
\newenvironment{semantic-ns}
{~\\\\
  \begin{prooftree}}
  {
  \end{prooftree}~\\\\}

\newenvironment{semantic-p}
{~\\\\
  \begin{prooftree}}
  {
  \end{prooftree}~\\\\}

% stuff thats relevant for drawing ORMs
\newcommand{\Entity}[2]{\entity (#1) at (#2) {#1};}
\newcommand{\Binary}[3]{\draw (#1) -- node[roles, label=#3] {} (#2);}
\newcommand{\nBinary}[4]{\node[roles, label=#3] (#3) at (#4) {};\plays
  (#1) to (#3); \plays (#2) to (#3);}
\newcommand{\vnBinary}[4]{\node[vroles, label=#3] (#3) at (#4)
  {};\plays (#1) to (#3); \plays (#2) to (#3);}
\newcommand{\Objectify}[1]{\entity [fill opacity=0, text width=1cm,
  text height=0cm] (O#1) at (#1) {};}
\newcommand{\vObjectify}[1]{\entity [fill opacity=0, text width=0cm, text height=1cm] (O#1) at (#1) {};}
\newcommand{\cObjectify}[3]{\entity [fill opacity=0, text width=#1cm, text height=#2cm] (O#3) at (#3) {};}
\newcommand{\oBinary}[4]{\draw (#1) -- node[roles, label=#3, #4] {}
  (#2);}
\newcommand{\onBinary}[5]{\node[roles, label=#3, #4] (#3) at (#5) {}; \plays
  (#1) to (#3); \plays (#2) to (#3);}
\newcommand{\vBinary}[3]{\draw (#1) -- node[vroles, label=#3] {} (#2);}
\newcommand{\voBinary}[4]{\draw (#1) -- node[vroles, label=#3, #4] {} (#2);}
\newcommand{\Value}[2]{\value (#1) at (#2) {#1};}

% other stuff
\newcommand{\note}[1]{\footnote{#1}}
\newcommand{\pnote}[2][]{\marginpar[#1]{#2}}
\newcommand{\unote}[1]{\footnote{~\url{#1}}}
\newcommand{\nsection}[1]{\newpage\section{#1}}

\newcommand{\thesistitlepage}{
  \begin{titlepage}
	\thispagestyle{empty}
	\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}
	\center{}
	\textsc{\Large \uni}\\[.7cm]
	\includegraphics[width=25mm]{img/in_dei_nomine_feliciter.eps}\\[.5cm]
	\textsc{\faculty}\\[0.5cm]

	\HRule{} \\[0.4cm]
	{ \huge \bfseries \maintitle}\\[0.1cm]
	\textsc{\subtitle}\\
	\HRule{} \\[.5cm]
	\textsc{\large \papertype}\\[.5cm]

	\begin{minipage}{0.4\textwidth}
	\begin{flushleft} \large
	\emph{Author:}\\
	\authorfirst\space \textsc{\authorsecond}
	\end{flushleft}
	\end{minipage}
	\
	\begin{minipage}{0.4\textwidth}
	\begin{flushright} \large
	\emph{Supervisor:} \\
	\thesissupervisorfirst\space \textsc{\thesissupervisorsecond} \\[1em]
	\emph{Second reader:} \\
	\thesissecondreaderfirst\space \textsc{\thesissecondreadersecond}
	\end{flushright}
	\end{minipage}\\[4cm]
	\vfill
	{\large \thesisdate}\\
	\clearpage
\end{titlepage}
}

\NewCommandCopy{\simplemaketitle}{\maketitle}
\ifcompact
\else
\setuptoc{toc}{onecolumn}
\fi
\renewcommand{\maketitle}{%
  \ifthesis%
  \thesistitlepage
  \tableofcontents
  \ifcompact\else
  \clearpage
  \fi
  \else
  \simplemaketitle{}
  \ifcompact\else
  \thispagestyle{empty}
  \clearpage
  \pagenumbering{arabic}
  \tableofcontents
  \clearpage
  \fi\fi
  }

\makeatletter
\newsavebox{\measure@tikzpicture}
\NewEnviron{scaletikzpicturetowidth}[1]{%
  \def\tikz@width{#1}%
  \def\tikzscale{1}\begin{lrbox}{\measure@tikzpicture}%
    \BODY
  \end{lrbox}%
  \pgfmathparse{#1/\wd\measure@tikzpicture}%
  \edef\tikzscale{\pgfmathresult}%
      \BODY
}
\makeatother

\RequirePackage{verbatim}
\newcommand{\wordcount}[1][\jobname]{%
  \immediate\write18{texcount -1 -merge -template={1} #1.tex > #1.wcdetail }%
  \input{#1.wcdetail}%
}

\newcommand{\kjv}[2]{%
  \immediate\write18{kjv -W #1 #2 | sed 1d > #1#2.kjv }%
  \input{#1#2.kjv}%
}
\newcommand{\menge}[2]{%
  \immediate\write18{menge -W #1 #2 | sed 1d > #1#2.menge }%
  \input{#1#2.menge}%
}
\newcommand{\grb}[2]{%
  \immediate\write18{grb -W #1 #2 | sed 1d > #1#2.grb }%
  \input{#1#2.grb}%
}
\newcommand{\vul}[2]{%
  \immediate\write18{vul -W #1 #2 | sed 1d > #1#2.vul }%
  \input{#1#2.vul}%
}

\newcommand{\BV}[2]{%
  \IfStrEq{\languagename}{english}{
   \kjv{#1}{#2}
  }{
    \IfStrEq{\languagename}{german}{
      \menge{#1}{#2}
    }{
      \IfStrEq{\languagename}{latin}{
        \vul{#1}{#2}
      }{
        \IfStrEq{\languagename}{greek}{
          \grb{#1}{#2}
        }{
          Language not supported
        }
      }
    }
  }
}

\RequirePackage{bibleref}
\RequirePackage{bibleref-german}
\newbiblerefstyle{artikel}{%
\biblerefstyle{jerusalem}%
\braltabbrvname
\renewcommand{\BRversestyle}[1]{##1}%
%%\setbooktitle{Revelation}{Apocalypse}%
}

\newcommand{\bibleversestyle}{artikel}
\biblerefstyle{\bibleversestyle}
\newcommand{\englishverse}[2]{{\biblerefstyle{\bibleversestyle}\bibleverse{#1}(#2)\biblerefstyle{\bibleversestyle}}}
\newcommand{\textenglishverse}[2]{{\biblerefstyle{default}\bibleverse{#1}(#2)\biblerefstyle{\bibleversestyle}}}
\newcommand{\germanverse}[2]{{\biblerefstyle{TRE}\biblerefformat{kurz}\bibleverse{#1}(#2)\biblerefstyle{\bibleversestyle}}}
\newcommand{\textgermanverse}[2]{{\biblerefstyle{TRE}\biblerefformat{Terminus}\bibleverse{#1}(#2)\biblerefstyle{\bibleversestyle}}}
\newcommand{\latinverse}[2]{{\biblerefstyle{Vulgata}\biblerefformat{kurz}\bibleverse{#1}(#2)\biblerefstyle{\bibleversestyle}}}
\newcommand{\textlatinverse}[2]{
  {
    \biblerefstyle{Vulgata}
    \biblerefformat{Terminus}
    \bibleverse{#1}{#2}
    \biblerefstyle{\bibleversestyle}
  }
}

\RequirePackage{cooltooltips}
\newcommand{\bv}[2]{%
  \immediate\write18{btooltip.sh #1 #2 "\languagename" short > #1#2.s.\languagename-btooltip}
  {\setlength{\fboxrule}{0pt}\input{#1#2.s.\languagename-btooltip}}
}

\newcommand{\textbv}[2]{%
  \immediate\write18{btooltip.sh #1 #2 "\languagename" long > #1#2.l.\languagename-btooltip}
  {\setlength{\fboxrule}{0pt}\input{#1#2.l.\languagename-btooltip}}
}


\newcommand{\tooltip}[3]{%
 \cooltooltip
[0 0 0]
[0 0 0]
{#1} % Popup title
{#2} % Content
{#2}{#2} % Content
{#3\strut}}
