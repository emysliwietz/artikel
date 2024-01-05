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
\RequirePackage{kvoptions}
\newcommand{\superclass}{scrartcl}

\newif\iffancy\fancyfalse
\DeclareOption{fancy}{\fancytrue}

\newif\ifextracolor\extracolorfalse
\DeclareOption{extracolor}{\extracolortrue}

\DeclareStringOption[modern]{design}

\DeclareBoolOption[false]{twocolumn}

\DeclareStringOption[head]{titlepage}

\DeclareBoolOption[false]{draft}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\superclass}}
\ProcessKeyvalOptions{artikel}
\ProcessOptions\relax

\LoadClass{\superclass}

% List of Requirements
\RequirePackage{lettrine}
\RequirePackage{pdfpages}
\RequirePackage{setspace}
\RequirePackage{shapepar}
%\RequirePackage[pages=absolute]{flowfram}
\RequirePackage[all]{nowidow}
\RequirePackage{amsmath}         % Provides extended mathematical environments and commands
\RequirePackage[textsize=scriptsize]{todonotes}
\RequirePackage{amssymb}         % Provides additional mathematical symbols
\RequirePackage{mathtools}
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
\makeatletter
\ifartikel@twocolumn
\RequirePackage[
left=3cm,
right=3cm,
top=2.25cm,
bottom=2.25cm,
headheight=12pt,
a4paper,
]{geometry}
\else
\RequirePackage[margin=1in]{geometry} % Provides commands for customizing page layout
\fi
\makeatother
\RequirePackage{grffile}         % Fix allowed filenames
\RequirePackage{graphicx}        % Support for including and manipulating graphics
\RequirePackage[
pdfa,
unicode=true, % loads with unicode support
pdfencoding=unicode,
psdextra, % loads replacements for some maths
% a4paper=true, %
luatex, %
backref=section, %
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
linkcolor=accentcolor,
citecolor=accentcolor,
allcolors=accentcolor,
bookmarksopen,
hyperindex]{hyperref} % Provides support for hypertext links within LaTeX documents
\RequirePackage[nameinlink]{cleveref}
\RequirePackage{fontawesome5}    % Provides the FontAwesome 5 icon set
\RequirePackage{ebproof}         % Natural deduction proof formatting
\RequirePackage{etoolbox}        % Collection of programming tools for LaTeX
%\RequirePackage{enumerate}       % Enhanced version of the enumerate environment
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
\RequirePackage{adjustbox}
\RequirePackage{rotating}        % Provides support for rotating objects
\RequirePackage[normalem]{ulem}  % Provides additional commands for underlining text, such as strikethrough
\RequirePackage[automark,draft=false,headwidth=textwithmarginpar,footwidth=head]{scrlayer-scrpage} % scrtcl headers and footers, among other things
\RequirePackage{svg}              % Provides support for including SVG graphics
\RequirePackage{subfiles}         % Provides support for compiling "subfiles" (i.e., individual LaTeX files that are part of a larger project)
\RequirePackage{xparse}           % Provides an enhanced version of LaTeX's kernel commands for defining new commands
\RequirePackage{xcolor}           % Interface for defining and using color in LaTeX
\RequirePackage{lipsum}           % Provides Lorem Ipsum text with the \lorem command
\RequirePackage{newunicodechar}   % Specifiy specific fallback fonts for individual characters
\RequirePackage{luacode}          % Program LaTeX in Lua

\makeatletter
%\providecommand{\maintitle}{Main Title}
%\providecommand{\maintitle}[1]{\def{\@maintitle}{{#1}}
% KOMA already provides @title and @subtitle
%\providecommand{\subtitle}{Subtitle}
\providecommand{\uni}[1]{\def\@uni{#1}}
\providecommand{\faculty}[1]{\def\@faculty{#1}}
\providecommand{\papertype}[1]{\def\@papertype{#1}}
\providecommand{\authorfirst}[1]{\def\@authorfirst{#1}}
\providecommand{\authorsecond}[1]{\def\@authorsecond{#1}}
\providecommand{\thesissupervisorfirst}[1]{\def\@thesissupervisorfirst{#1}}
\providecommand{\thesissupervisorsecond}[1]{\def\@thesissupervisorsecond{#1}}
\providecommand{\thesissecondreaderfirst}[1]{\def\@thesissecondreaderfirst{#1}}
\providecommand{\thesissecondreadersecond}[1]{\def\@thesissecondreadersecond{#1}}

\providecommand{\@uni}{Radboud University Nijmegen}
\providecommand{\@faculty}{Digital Security Group}
\providecommand{\@papertype}{Master Thesis}
\providecommand{\@authorfirst}{Egidius}
\providecommand{\@authorsecond}{Mysliwietz}
\providecommand{\@thesissupervisorfirst}{}
\providecommand{\@thesissupervisorsecond}{}
\providecommand{\@thesissecondreaderfirst}{}
\providecommand{\@thesissecondreadersecond}{}
%\title{\@maintitle{} \\ {\small \@subtitle{}}}
\title{} % default
\author{\@authorfirst{} \@authorsecond{}}
\makeatother
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

\RequirePackage[backend=biber, style=ieee, giveninits=true, uniquename=init] {biblatex} % Bibliographic package
% language=auto, autolang=other make biblatex automatically switch language script fonts, but create problems with mixed scripts

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

\makeatletter
\ifpdftex
\iffancy
\RequirePackage{ebgaramond}
\RequirePackage{ebgaramond-maths}
\fi\fi
\makeatother
\iftutex


 % \defaultfontfeatures+[EBGaramond]{
 %   RawFeature={%
 %  +hlig;
 %  +case;%Case sensitive symbols
 %  +liga;%Default ligatures
 %  +kern;
 % }
 % ,}
\providefontfamily{\EBGaramond}{EBGaramond}[
Path = /home/user/.fonts/EBGaramond/,
Scale = 1,
Extension = .ttf,
UprightFont = *-Regular, % set EB Garamond 12 as default upright font
UprightFeatures = {
  SizeFeatures = {
    {Size = -10.1,
      Font = *-Regular}, % use EB Garamond 08 for 10pt size and smaller
    {Size = 10.1-}
  },
}, % use default upright font for larger than 10pt size
ItalicFont = *-Italic, % set EB Garamond 12 as default italic font
ItalicFeatures = {
  SizeFeatures = {
    {Size = -10.1,
      Font = *-Italic}, % use EB Garamond 08 for 10pt size and smaller
    {Size = 10.1-}
  }
}, % use default italic font for larger than 10pt size
BoldFont = *-Bold, % set EB Garamond 12 as default italic font
BoldFeatures = {
  SizeFeatures = {
    {Size = -10.1,
      Font = *-Bold}, % use EB Garamond 08 for 10pt size and smaller
    {Size = 10.1-}
  }
}, % use default italic font for larger than 10pt size
BoldItalicFont = *-BoldItalic,
FontFace={mb}{n}{*-Medium},
FontFace={mb}{it}{*-MediumItalic},
FontFace={sb}{n}{*-SemiBold},
FontFace={sb}{it}{*-SemiBoldItalic},
FontFace={k}{n}{*-ExtraBold},
FontFace={k}{it}{*-ExtraBoldItalic},
SmallCapsFeatures = {Letters = SmallCaps},
Ligatures = {Common, TeX},
Numbers = {Proportional, OldStyle},
%RawFeature = {-locl, +swsh, +ss01},
SwashFont = *-Swash,
]
\makeatletter
\iffancy
\setmainfont{EBGaramond}
\setsansfont{EBGaramond} % Change to Optima
\newfontfamily\greekfont{EBGaramond}
\else
\setmainfont{Linux Libertine O}
\setsansfont{Linux Libertine O} % Switch to Sans
\newfontfamily\greekfont{Linux Libertine O}
\fi
\makeatother

\setlist[itemize]{label={\large $\bullet$}, labelsep=3mm}

\providefontfamily{\EBGaramondInitials}{EBGaramond-Initials}[
Path = /home/user/.fonts/EBGaramond/orig/,
Extension = .otf,
]

\providefontfamily{\EBGaramondWhiteInitials}{EBGaramond-Initials}[
Path = /home/user/.fonts/EBGaramond/orig/,
Extension = .otf,
UprightFont = *F1
]

\providefontfamily{\EBGaramondTextInitials}{EBGaramond-Initials}[
Path = /home/user/.fonts/EBGaramond/orig/,
Extension = .otf,
UprightFont = *F2
]

\providefontfamily{\EBGaramondSwash}{EBGaramond-Swash}[
Path = /home/user/.fonts/EBGaramond/orig/,
Extension = .otf,
UprightFont = *
]
\providecommand{\ebsw}{\EBGaramondSwash}
\makeatletter
\iffancy
\renewcommand{\textsw}[1]{{\EBGaramondSwash{}#1}}
\let\oldquote\quote
\let\oldendquote\endquote%
\renewenvironment{quote}{\oldquote\EBGaramondSwash“}{”\oldendquote}
\fi
\makeatother

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
\makeatletter
\iffancy
\setmonofont[Scale=MatchLowercase]{SourceCodePro}
\fi
\makeatother

\providefontfamily{\Arial}{Arial}[
Path = /home/user/.fonts/Arial/,
Extension = .otf,
UprightFont = *,
AutoFakeBold,
AutoFakeSlant,
]

\setotherlanguage{arabic}
\setotherlanguage{persian}
\newfontfamily\arabicfont[Script=Arabic]{ScheherazadeNew}
\newfontfamily\arabicfonttt[Script=Arabic]{ScheherazadeNew}
\providefontfamily{\ScheherazadeNew}{ScheherazadeNew}[
Path = /home/user/.fonts/ScheherazadeNew/,
Extension = .ttf,
UprightFont = *-Regular,
BoldFont = *-Bold,
]
\providefontfamily{\GeezaPro}{GeezaPro}[
Path = /home/user/.fonts/GeezaPro/,
Extension = .otf,
UprightFont = *-Regular,
]

\begin{luacode}
  function addcharsarabic(start, finish)
    for i=start,finish do
      tex.sprint("\\newunicodechar{" .. unicode.utf8.char(i) .. "}{{\\arabicfont{" .. unicode.utf8.char(i) .. "}}}")
    end
  end
\end{luacode}

\directlua{addcharsarabic(0x0600, 0x06FF)}  % Arabic block

\setotherlanguage{chinese}
\newfontfamily\chinesefont[Script=CJK]{KingHwaOldSong}
\providefontfamily{\KingHwa}{KingHwaOldSong}[
Path = /home/user/.fonts/KingHwaOldSong/,
Extension = .otf,
UprightFont = *-Regular,
]

\begin{luacode}
  function addcharsCJK(start, finish)
    for i=start,finish do
      tex.sprint("\\newunicodechar{" .. unicode.utf8.char(i) .. "}{{\\chinesefont{" .. unicode.utf8.char(i) ..   "}}}")
    end
  end
\end{luacode}

  % CJK Unified Ideographs
  \directlua{addcharsCJK(0x4E00, 0x9FFF)}

  % CJK Unified Ideographs Extension A
  \directlua{addcharsCJK(0x3400, 0x4DBF)}

  %- CJK Unified Ideographs Extension B
  \directlua{addcharsCJK(0x20000, 0x2A6DF)}

  %- CJK Unified Ideographs Extension C
  \directlua{addcharsCJK(0x2A700, 0x2B73F)}

  %- CJK Unified Ideographs Extension D
  \directlua{addcharsCJK(0x2B740, 0x2B81F)}

  %- CJK Unified Ideographs Extension E
  \directlua{addcharsCJK(0x2B820, 0x2CEAF)}

  %- CJK Unified Ideographs Extension F
  \directlua{addcharsCJK(0x2CEB0, 0x2EBEF)}

  %- CJK Unified Ideographs Extension G
  \directlua{addcharsCJK(0x30000, 0x3134F)}

  %- CJK Unified Ideographs Extension H
  \directlua{addcharsCJK(0x31350, 0x323AF)}

  %- CJK Compatibility Ideographs
  \directlua{addcharsCJK(0xF900, 0xFAFF)}

  %- CJK Compatibility Ideographs Supplement
  \directlua{addcharsCJK(0x2F800, 0x2FA1F)}

\newfontfamily\canadianaboriginalfont{NotoSansCanadianAboriginal}
\providefontfamily{\NSCanadianAboriginal}{NotoSansCanadianAboriginal}[
Path = /home/user/.fonts/NotoSansCanadianAboriginal/,
Extension = .ttf,
UprightFont = *-Regular,
BoldFont = *-Bold,
]

\begin{luacode}
  function addcharsCanadianAboriginal(start, finish)
    for i=start,finish do
      tex.sprint("\\newunicodechar{" .. unicode.utf8.char(i) .. "}{{\\NSCanadianAboriginal{" .. unicode.utf8.char(i) ..   "}}}")
    end
  end
\end{luacode}

  % CJK Unified Ideographs
  \directlua{addcharsCanadianAboriginal(0x1400, 0x167F)}

\setotherlanguage{hebrew}
\newfontfamily\hebrewfont[Script=Hebrew]{FrankRuhlLibre}
\providefontfamily{\FrankRuhlLibre}{FrankRuhlLibre}[
Path = /home/user/.fonts/FrankRuhlLibre/,
Extension = .ttf,
UprightFont = *-Regular,
BoldFont = *-Bold,
]

\begin{luacode}
  function addcharsHebrew(start, finish)
    for i=start,finish do
      tex.sprint("\\newunicodechar{" .. unicode.utf8.char(i) .. "}{{\\hebrewfont{" .. unicode.utf8.char(i) ..   "}}}")
    end
  end
\end{luacode}

  % Hebrew block
  \directlua{addcharsHebrew(0x0590, 0x05FF)}

\setotherlanguage{sanskrit}
\setotherlanguage{devanagari}
\setotherlanguage{hindi}
\newfontfamily\devanagarifont[Script=Devanagari]{Laila}
\providefontfamily{\Laila}{Laila}[
Path = /home/user/.fonts/Laila/,
Extension = .ttf,
UprightFont = *-Regular,
BoldFont = *-Bold,
]

\begin{luacode}
  function addcharsDevanagari(start, finish)
    for i=start,finish do
      tex.sprint("\\newunicodechar{" .. unicode.utf8.char(i) .. "}{{\\devanagarifont{" .. unicode.utf8.char(i) ..   "}}}")
    end
  end
\end{luacode}

  % Devanagari block
  \directlua{addcharsDevanagari(0x0900, 0x097F)}

\newfontfamily\egyptianhieroglyphsfont{NotoSansEgyptianHieroglyphs}
\providefontfamily{\NSEgyptianHieroglyphs}{NotoSansEgyptianHieroglyphs}[
Path = /home/user/.fonts/NotoSansEgyptianHieroglyphs/,
Extension = .ttf,
UprightFont = *-Regular,
AutoFakeBold,
]

\begin{luacode}
  function addcharsEgyptianHieroglyphs(start, finish)
    for i=start,finish do
      tex.sprint("\\newunicodechar{" .. unicode.utf8.char(i) .. "}{{\\NSEgyptianHieroglyphs{" .. unicode.utf8.char(i) ..   "}}}")
    end
  end
\end{luacode}

  % Egyptian Hieroglyphs block
  \directlua{addcharsEgyptianHieroglyphs(0x13000, 0x1342F)}

\newfontfamily\cuneiformfont{NotoSansCuneiform}
\providefontfamily{\NSCuneiform}{NotoSansCuneiform}[
Path = /home/user/.fonts/NotoSansCuneiform/,
Extension = .ttf,
UprightFont = *-Regular,
AutoFakeBold,
]

\begin{luacode}
  function addcharsCuneiform(start, finish)
    for i=start,finish do
      tex.sprint("\\newunicodechar{" .. unicode.utf8.char(i) .. "}{{\\NSCuneiform{" .. unicode.utf8.char(i) ..   "}}}")
    end
  end
\end{luacode}

  % Cuneiform block
  \directlua{addcharsCuneiform(0x12000, 0x123FF)}

\providefontfamily{\AppleColorEmoji}{AppleColorEmoji}[
Path = /home/user/.fonts/AppleColorEmoji/,
Extension = .ttf,
UprightFont = *-Regular,
AutoFakeBold,
AutoFakeSlant,
]

\begin{luacode}
  function addcharsEmoji(start, finish)
    for i=start,finish do
      tex.sprint("\\newunicodechar{" .. unicode.utf8.char(i) .. "}{{\\AppleColorEmoji{" .. unicode.utf8.char(i) ..   "}}}")
    end
  end
\end{luacode}

% Main emoji block
  %\directlua{addcharsEmoji(0x1F600, 0x1F64F)}
% Additional block
  %\directlua{addcharsEmoji(0x1F900, 0x1F9FF)}

\providefontfamily{\TimesNewRoman}{TimesNewRoman}[
Extension = .otf,
Path = /home/user/.fonts/TimesNewRoman/,
UprightFont = *,
AutoFakeBold,
AutoFakeSlant,
]

\providefontfamily{\FontAwesome}{FontAwesome}[
Extension = .otf,
Path = /home/user/.fonts/FontAwesome/,
UprightFont = *-Regular,
BoldFont = *-Solid,
]
\providefontfamily{\FontAwesomeBrands}{FontAwesome-Brands}[
Extension = .otf,
Path = /home/user/.fonts/FontAwesome/,
UprightFont = *-Regular,
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

\definecolor{litpurple}{RGB}{128,0,128}
\definecolor{gold}{RGB}{212,175,55}
\definecolor{litpink}{RGB}{244,133,186}
\definecolor{litgreen}{RGB}{24,100,32}
\definecolor{litred}{RGB}{216,7,7}
\definecolor{lityellow}{RGB}{212,175,55}
\newcommand{\litpurple}{\color{litpurple}}
\newcommand{\gold}{\color{gold}}

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

\providecommand{\textglow}[2][red]{%
  \leavevmode%
  \pdfliteral{q 1 J 1 j 1 Tr}%
  \foreach\layer in{1,...,10}{%
    \color{#1!\layer0!white!50!white}%
    \pgfsetlinewidth{(11-\layer)/3}% pgf command will do arithmetic for us
    \rlap{#2}%
  }%
  \pdfliteral{Q}%
  \hbox{#2}%
}

\newenvironment{compactitemize}{\begin{itemize}[noitemsep]}{\end{itemize}}
\newenvironment{compactenumerate}{\begin{enumerate}[noitemsep]}{\end{enumerate}}
\newenvironment{spaceditemize}{\begin{itemize}}{\end{itemize}}
\newenvironment{spacedenumerate}{\begin{enumerate}}{\end{enumerate}}


% Refine these compact versions as default in compact document
\let\oldenumerate\enumerate
\let\endoldenumerate\endenumerate
\renewenvironment{enumerate}{\oldenumerate[noitemsep]}{\endoldenumerate}
\let\olditemize\itemize
\let\endolditemize\enditemize
\renewenvironment{itemize}{\olditemize[noitemsep]}{\endolditemize}

% ensure tables have correct text colour
%\AtBeginEnvironment{tabular}{\color{green}}

% Code blocks
\RequirePackage{minted}
\RequirePackage[many,breakable,xparse]{tcolorbox}

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

\makeatletter
\IfStrEq{\artikel@design}{modern}{
  \NewCommandCopy{\toc}{\tableofcontents}
  \renewcommand{\tableofcontents}{\pagenumbering{Roman}\toc\clearpage\pagenumbering{arabic}}
}{}
\makeatother

\makeatletter
\IfStrEq{\artikel@design}{modern}{
  \renewcommand\thesection{\Roman{section}} % Roman numerals for the sections
  \renewcommand\thesubsection{\roman{subsection}} % roman numerals for subsections
  \renewcommand\thesubsubsection{\alph{subsubsection}} % alphabetic numerals for subsubsections
}{}
\makeatother

\makeatletter
\RequirePackage[hyphenate,fit]{truncate}
\providecommand{\logo}[1]{\def\@logo{#1}}
\providecommand{\@logo}{}
\colorlet{accentcolor}{litpurple}
\providecommand{\accentcolor}{\color{accentcolor}}
\IfStrEq{\artikel@design}{modern}{
\pagestyle{scrheadings}
\KOMAoptions{headsepline=2pt, headwidth=textwithmarginpar}
%\KOMAoptions{footsepline=.2pt:4cm, clines}
\addtokomafont{pagenumber}{\accentcolor}
\ifextracolor
\addtokomafont{section}{\accentcolor}
\fi
\cfoot{}
\ihead{\@logo}

\chead{$\bullet$ \truncate{6cm}{\@title} $\bullet$}

\rohead*{%
  \raisebox{\dimexpr-2pt-\dp\strutbox\relax}[0pt][0pt]
  {\accentcolor\rule{1pt}{\dimexpr24pt+\dp\strutbox\relax}}%
  \hspace{0.8em}%
  \hbox{\truncate{4cm}{\rightmark} $\bullet$ \accentcolor{\Large\pagemark}}
}
\setkomafont{pagehead}{\normalfont\scshape}
\setkomafont{headsepline}{\color{black!20!white}}

% To make the accented line appear above the grey line
\RemoveLayersFromPageStyle{scrheadings}{scrheadings.head.below.line}
\AddLayersAtBeginOfPageStyle{scrheadings}{scrheadings.head.below.line}
}{}
\IfStrEq{\artikel@design}{default}{
  \chead{}
}{}
\makeatother

\makeatletter
\IfStrEq{\artikel@design}{modern}{
\colorlet{sectioncolor}{black!20}
\renewcommand\sectionlinesformat[4]{%
  \colorbox{sectioncolor}{%
    \parbox[t]{\dimexpr\linewidth-2\fboxsep\relax}{%
      \raggedsection\@hangfrom{#3}{#4}%
    }}}
}{}
\makeatother

\makeatletter
\ifartikel@twocolumn
\setlength{\columnsep}{2em}
\tolerance=9999
\fi
\makeatother

\makeatletter
\ifartikel@draft
\overfullrule=10mm
\fi
\makeatother

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

%% TODO PACKAGE
\newcommand{\towrite}[1]{\todo[inline,color=yellow!10]{TO WRITE: #1}}
\newcommand{\inlinetodo}[1]{\todo[inline]{#1}}
\newcommand{\due}[1]{\todo[inline,color=blue!10]{Due: #1}}

\newcommand{\note}[1]{\footnote{#1}}
\newcommand{\mnote}[2][]{\marginpar[#1]{#2}}
\newcommand{\rnote}[1]{\marginpar[#1]{}}
\newcommand{\lnote}[1]{\marginpar{#1}}
\newcommand{\unote}[1]{\footnote{~\url{#1}}}
\newcommand{\nsection}[1]{\newpage\section{#1}}

\makeatletter
\newcommand{\thesistitlepage}{
  \begin{titlepage}
	\thispagestyle{empty}
	\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}
	\center{}
	\textsc{\Large \@uni}\\[.7cm]
	\includegraphics[width=25mm]{img/in_dei_nomine_feliciter.eps}\\[.5cm]
	\textsc{\@faculty}\\[0.5cm]

	\HRule{} \\[0.4cm]
	{ \huge \bfseries \@title}\\[0.1cm]
	\textsc{\@subtitle}\\
	\HRule{} \\[.5cm]
	\textsc{\large \@papertype}\\[.5cm]

	\begin{minipage}{0.4\textwidth}
	\begin{flushleft} \large
	\emph{Author:}\\
	\@authorfirst\space \textsc{\@authorsecond}
	\end{flushleft}
	\end{minipage}
	\
	\begin{minipage}{0.4\textwidth}
	\begin{flushright} \large
	\emph{Supervisor:} \\
	\@thesissupervisorfirst\space \textsc{\@thesissupervisorsecond} \\[1em]
	\emph{Second reader:} \\
	\@thesissecondreaderfirst\space \textsc{\@thesissecondreadersecond}
	\end{flushright}
	\end{minipage}\\[4cm]
	\vfill
	{\large \@date}\\
	\clearpage
\end{titlepage}
\makeatother
}

\makeatletter
\IfStrEq{\artikel@titlepage}{full}
{\KOMAoptions{titlepage=true}\setuptoc{toc}{onecolumn}}{}
\IfStrEq{\artikel@titlepage}{head}
{\KOMAoptions{titlepage=false}}{}
\IfStrEq{\artikel@titlepage}{inline}
{\KOMAoptions{titlepage=false}}{}
\NewCommandCopy{\simplemaketitle}{\maketitle}
\NewCommandCopy{\simpletoc}{\tableofcontents}
\renewcommand{\maketitle}{%
  \IfStrEq{\artikel@titlepage}{thesis}{
  \thesistitlepage
  }{}
  \IfStrEq{\artikel@titlepage}{full}{
  \simplemaketitle{}
  \clearpage
  }{}
  \IfStrEq{\artikel@titlepage}{head}{
    \ifartikel@twocolumn
    \twocolumn[{
      \simplemaketitle{}
      }]
    \else
      \simplemaketitle{}
    \fi
  }{}
  \IfStrEq{\artikel@titlepage}{inline}{
    {\let\clearpage\relax
      \simplemaketitle{}}
  }{}
}
\renewcommand{\tableofcontents}{%
 \IfStrEq{\artikel@titlepage}{full}{%
  \pagenumbering{arabic}
  \simpletoc%
  \clearpage
 }{}
 \IfStrEq{\artikel@titlepage}{head}{%
   {\let\clearpage\relax\simpletoc}
 }{}
 \IfStrEq{\artikel@titlepage}{inline}{%
   {\let\clearpage\relax\simpletoc}
 }{}
}
\makeatother

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

\newcommand{\shell}[1]{%
  \immediate\write18{#1}
}
\newcommand{\ensuredir}[1]{
  \immediate\write18{mkdir -p $1}
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
\newcommand{\greekverse}[2]{\englishverse{#1}{#2}}
\newcommand{\textgreekverse}[2]{\textenglishverse{#1}{#2}}
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
  \setlength{\fboxrule}{0pt}
  \setlength{\fboxsep}{0pt}
  \let\fcolorbox\relax
  \let\fbox\relax
  \let\framebox\relax
  \let\boxed\relax
  \hspace*{-1.1em}
  \cooltooltip%
  [1 1 1]
  [1 1 1]
  {#1} % Popup title
  {#2} % Content
  {#2}{#2} % Content
  {#3\strut}\hspace*{-1em}
}

\newcount \Re \newcount \Im
\newcount \Zr \newcount \Zi \newcount \Zrr \newcount \Zii \newcount \Ind

\newcommand{\MandIter}{%
  \divide \Zr by 16 \divide \Zi by 16
  \Zrr=\Zr \multiply \Zrr by \Zrr \divide \Zrr by 256
  \Zii=\Zi \multiply \Zii by \Zii \divide \Zii by 256
  \multiply \Zi by \Zr \divide \Zi by 256
  \multiply \Zi by 2 \advance \Zi by \Im
  \Zr=\Zrr \advance \Zr by -\Zii \advance \Zr by \Re
  \let\next=\MandIter
  \count4=\Zrr \advance \count4 by \Zii
  \ifnum \count4>262144 \let\next=\relax \fi
  \ifnum \Ind=15 \let\next=\relax \else \advance \Ind by 1 \fi
  \next
}

\newcommand{\MandLoop}{%
  \Re=\count0
  \multiply \Re by 196608 \divide \Re by \count2 \advance \Re by -131072
  \Im=\count1
  \multiply \Im by 150000 \divide \Im by \count3 \advance \Im by -75000
  \Zr=\Re \Zi=\Im \Ind=0
  \MandIter
  \ifcase \Ind
  .\or .\or :\or -\or +\or =\or *\or i\or I%
  \or H\or O\or X\or M\or \#\or @\or .%
  \fi
  \let\next=\MandLoop
  \advance \count0 by 1
  \ifnum \count0>\count2
  \newline
  \count0=0
  \advance \count1 by 1
  \ifnum \count1>\count3
  \let\next=\relax
  \fi
  \fi
  \next
}

\newcommand{\Mandel}[2]{
  \count0=0 \count1=0 \count2=#1 \count3=#2
  \MandLoop

}

\csname endofdump\endcsname

\RequirePackage{verbatim}
\newcommand{\wordcount}[1][\jobname]{%
  \immediate\write18{texcount -1 -merge -template={1} #1.tex > #1.wcdetail }%
  \input{#1.wcdetail}%
}

% Infoentries
% ONE | Two

\newcommand{\infoentry}[2] {
  \narrowinfoentry{#1}{#2}
  \vspace{.25cm}
}

\newcommand{\smallinfoentry}[2] {
  \narrowinfoentry{#1}{#2}
  \vspace{.1cm}
}

\newcommand{\narrowinfoentry}[2] {
  \begin{minipage}[t]{0.25\linewidth}
    \begin{flushright}
      \textsc{\textbf{#1}}
    \end{flushright}
  \end{minipage}
  \hspace{0.2cm}\vline\hspace{1cm}
  \begin{minipage}[t]{.50\linewidth}
    #2
  \end{minipage}\\
}

\newcommand{\uinfoentry}[2] {
  \begin{minipage}[t]{0.155\linewidth}
    \begin{flushright}
      \textsc{\hspace{-1cm}#1}
    \end{flushright}
  \end{minipage}
  \hspace{0.02cm}\vline\hspace{1cm}
  \begin{minipage}[t]{.7\linewidth}
    #2
  \end{minipage}\\
  \vspace{0.5cm}
}

% Entries

% date, title, place/link, comments
\newcommand{\entry}[4]{
  \ifthenelse{\isempty{#4}}
  {\shortentry{#1}{#2}{#3}}
  {\longentry{#1}{#2}{#3}{#4}}
}

\newcommand{\longentry}[4]{
  \rawentry{\textsc{#1}}
  {\bfseries{#2}}
  {\textit{#3}}
  {\footnotesize{#4}}
}

\newcommand{\shortentry}[4]{
  \baseentry{\textsc{#1}}
  {{\bfseries{#2}}\\
  {\textit{#3}}}\\
}

\newcommand{\rawentry}[4] {
  \baseentry{#1} {
    {#2}\\ {#3}\\ {#4}
  }
}

\newcommand{\baseentry}[2] {
  \begin{minipage}[t]{.15\linewidth}
    \hfill {#1}
  \end{minipage}
  \hfill\vline\hfill
  \begin{minipage}[t]{.80\linewidth}
    {#2}
  \end{minipage}\\
  \vspace{.2cm}
}
