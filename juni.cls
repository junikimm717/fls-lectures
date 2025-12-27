\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{juni}[2023/08/28]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrartcl}}
\DeclareOption{doublespaced}{\linespread{2}}
\ProcessOptions\relax
\LoadClass{scrartcl}

\usepackage[utf8]{inputenc}
\usepackage[english]{babel}

\usepackage[margin=1.0in]{geometry}
\usepackage{amsmath,amsfonts,amsthm,amssymb,thmtools}
\usepackage[svgnames,dvipsnames,table]{xcolor}
\usepackage[framemethod=TikZ]{mdframed}

\usepackage{graphicx}

% ============ Custom Colors ==============
\definecolor{j_darkblue}{HTML}{242E35}
\definecolor{j_lightblue}{HTML}{2D02D0}

% =========== Custom Headers and Footers ========
\usepackage{minibox}
\usepackage{setspace}

\newcommand{\course}[1]{\gdef\@course{#1}}
\gdef\@course{}
\usepackage[headsepline]{scrlayer-scrpage}
\renewcommand{\headfont}{\small}
\ihead{\textbf{\@title} --- \@date}
\ohead{\@author \space \thepage}

\newcommand{\ohsheader}{
    \begin{singlespace}
  \noindent \minibox[frame]{
    \noindent\@author \\
    \noindent\@course \\
    \noindent\@date \\
    \noindent\@title
  }
    \end{singlespace}
}

% ======= Math Settings and Macros =========
\renewcommand{\qedsymbol}{$\blacksquare$}
\newcommand{\NN}{\mathbb{N}}
\newcommand{\ZZ}{\mathbb{Z}}
\newcommand{\QQ}{\mathbb{Q}}
\newcommand{\RR}{\mathbb{R}}

\newcommand{\ii}{\mathbf{i}}
\newcommand{\jj}{\mathbf{j}}
\newcommand{\kk}{\mathbf{k}}
\newcommand{\rr}{\mathbf{r}}
\newcommand{\vv}{\mathbf{v}}
\newcommand{\TT}{\mathbf{T}}
\newcommand{\dff}{\mathrm{d}}

\newcommand{\paren}[1]{\left( #1 \right)}
\newcommand{\floor}[1]{\left\lfloor #1 \right\rfloor}
\newcommand{\ceil}[1]{\left\lceil #1 \right\rceil}
\newcommand{\abs}[1]{\left| #1 \right|}

% ======= Physics Settings and Macros =====
\usepackage{siunitx}
\usepackage{cancel}
\DeclareSIUnit\atm{atm}

\ifdefined\qty\else
  \ifdefined\NewCommandCopy
    \NewCommandCopy\qty\SI
  \else
    \NewDocumentCommand\qty{O{}mm}{\SI[#1]{#2}{#3}}
  \fi
\fi
\ifdefined\unit\else
  \ifdefined\NewCommandCopy
    \NewCommandCopy\unit\si
  \else
    \NewDocumentCommand\unit{O{}m}{\si[#1]{#2}}
  \fi
\fi

% ======= Working with Pandoc ============
\providecommand{\tightlist}{%
  \setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}}

% working with long nested outlines
\usepackage[shortlabels]{enumitem}
\setlistdepth{9}
\setlist[itemize,1]{label=$\bullet$}
\setlist[itemize,2]{label=$\bullet$}
\setlist[itemize,3]{label=$\bullet$}
\setlist[itemize,4]{label=$\bullet$}
\setlist[itemize,5]{label=$\bullet$}
\setlist[itemize,6]{label=$\bullet$}
\setlist[itemize,7]{label=$\bullet$}
\setlist[itemize,8]{label=$\bullet$}
\setlist[itemize,9]{label=$\bullet$}

% ====== Macro to Compress Paper =========

\newcommand{\compress}{
  \usepackage{mathptmx}
  \setlength{\parskip}{0cm}
  \RedeclareSectionCommand[
    beforeskip=-.3em,
    runin=false,
    afterskip=-.2\baselineskip
  ]{section}
  \RedeclareSectionCommand[
    beforeskip=-.3em,
    runin=false,
    afterskip=-.2\baselineskip
  ]{subsection}
}

\addtokomafont{section}{\large}
% ======= styling hyperrefs ===========

\usepackage[colorlinks=true]{hyperref}
\hypersetup{urlcolor=RubineRed,linkcolor=j_lightblue,citecolor=ForestGreen}
\usepackage{cleveref}


% ======= styling sections ============
\renewcommand*{\sectionformat}%
  {\color{j_lightblue}\S\thesection\enskip}
\renewcommand*{\subsectionformat}%
  {\color{j_lightblue}\S\thesubsection\enskip}
\renewcommand*{\subsubsectionformat}%
  {\color{j_lightblue}\S\thesubsubsection\enskip}
\addtokomafont{paragraph}{\color{orange!35!black}\P\ }


% ======== Theorem Styles ===========
% (modified from Evan Chen's evan.sty)
\mdfdefinestyle{mdbluebox}{%
  roundcorner=5pt,
  linewidth=1pt,
  skipabove=12pt,
  innerbottommargin=9pt,
  skipbelow=2pt,
  linecolor=j_lightblue,
  nobreak=true,
  backgroundcolor=TealBlue!5,
}
\declaretheoremstyle[
  headfont=\sffamily\bfseries\color{j_darkblue},
  mdframed={style=mdbluebox},
  headpunct={\\[3pt]},
  postheadspace={0pt}
]{thmbluebox}

\mdfdefinestyle{mdredbox}{%
  linewidth=0.5pt,
  skipabove=12pt,
  frametitleaboveskip=5pt,
  frametitlebelowskip=0pt,
  skipbelow=2pt,
  frametitlefont=\bfseries,
  innertopmargin=4pt,
  innerbottommargin=8pt,
  nobreak=true,
  backgroundcolor=Salmon!5,
  linecolor=RawSienna,
}
\declaretheoremstyle[
  headfont=\sffamily\bfseries\color{RawSienna},
  mdframed={style=mdredbox},
  headpunct={\\[3pt]},
  postheadspace={0pt},
]{thmredbox}

\mdfdefinestyle{mdgreenbox}{%
  skipabove=8pt,
  skipbelow=0pt,
  linewidth=2pt,
  rightline=false,
  leftline=true,
  topline=false,
  bottomline=false,
  linecolor=ForestGreen,
  backgroundcolor=ForestGreen!5,
}
\declaretheoremstyle[
  headfont=\bfseries\sffamily\color{ForestGreen!70!black},
  bodyfont=\normalfont,
  spaceabove=2pt,
  spacebelow=1pt,
  mdframed={style=mdgreenbox},
  headpunct={ --- },
]{thmgreenbox}

\mdfdefinestyle{mdpurplebox}{%
  roundcorner=2pt,
  linewidth=0.5pt,
  skipabove=12pt,
  skipbelow=12pt,
  innertopmargin=9pt,
  innerbottommargin=9pt,
  linecolor=RedViolet,
  nobreak=true,
  backgroundcolor=Orchid!10,
}

% ========= Theorem Declarations ========

\declaretheorem[style=thmbluebox,name=Theorem,numberwithin=section]{theorem}
\declaretheorem[style=thmbluebox,name=Theorem,numbered=no]{theorem*}

\declaretheorem[style=thmbluebox,name=Lemma,sibling=theorem]{lemma}
\declaretheorem[style=thmbluebox,name=Proposition,sibling=theorem]{proposition}
\declaretheorem[style=thmbluebox,name=Corollary,sibling=theorem]{corollary}
\declaretheorem[style=thmbluebox,name=Lemma,numbered=no]{lemma*}
\declaretheorem[style=thmbluebox,name=Proposition,numbered=no]{proposition*}
\declaretheorem[style=thmbluebox,name=Corollary,numbered=no]{corollary*}


\declaretheorem[style=thmgreenbox,name=Algorithm,sibling=theorem]{algorithm}
\declaretheorem[style=thmgreenbox,name=Algorithm,numbered=no]{algorithm*}
\declaretheorem[style=thmgreenbox,name=Claim,sibling=theorem]{claim}
\declaretheorem[style=thmgreenbox,name=Claim,numbered=no]{claim*}

\declaretheorem[style=thmredbox,name=Example,sibling=theorem]{example}
\declaretheorem[style=thmredbox,name=Example,numbered=no]{example*}

% This is a purple box that lets you do whatever you want with it.
\newenvironment{purplebox}[1]{
\begin{mdframed}[style=mdpurplebox]
\vspace{2pt}
{\bfseries\sffamily\color{RedViolet}{#1}} \\
} {
\end{mdframed}
}

% code listings

\RequirePackage{xcolor,listings}

\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

\lstdefinestyle{mystyle}{
    backgroundcolor=\color{backcolour},   
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    stringstyle=\color{codepurple},
    basicstyle=\ttfamily\footnotesize,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2
}

\lstset{style=mystyle}
