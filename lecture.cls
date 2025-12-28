\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lecture}[2023/08/28 Beamer lecture class]
\ProvidesFile{lecture.cls}[Author: Juni Kim]

% -------------------------------------------------
% Pass all options to beamer
% -------------------------------------------------
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax
\LoadClass[t]{beamer}

% -------------------------------------------------
% Engine check (Alegreya via fontspec)
% -------------------------------------------------
\RequirePackage{iftex}
\ifPDFTeX
  \PackageError{lecture}
    {This class requires XeLaTeX or LuaLaTeX}
    {Please compile with XeLaTeX or LuaLaTeX.}
\fi

% -------------------------------------------------
% Fonts
% -------------------------------------------------
\RequirePackage{fontspec}

\setmainfont[
  Ligatures=TeX,
  Numbers=OldStyle
]{Alegreya}

\setsansfont[
  Ligatures=TeX
]{Alegreya Sans}

\setmonofont[
  Scale=MatchLowercase
]{JetBrains Mono}

\RequirePackage{hyperref}

% Prevent beamer from overriding fonts
\usefonttheme{professionalfonts}

% -------------------------------------------------
% Beamer theme
% -------------------------------------------------
\usetheme{CambridgeUS}
\usecolortheme{default}

\setbeamerfont{title}{family=\rmfamily}
\setbeamerfont{frametitle}{family=\rmfamily}
\setbeamerfont{normal text}{family=\rmfamily}

\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{footline}[frame number]

% -------------------------------------------------
% Mathematics
% -------------------------------------------------
\RequirePackage{amsmath,amssymb}

% -------------------------------------------------
% Listings — Shell / Bash focused
% -------------------------------------------------
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

\NewDocumentEnvironment{codeframe}{O{} m}{
  \begin{frame}[fragile,#1]{#2}
}{
  \end{frame}
}

% Inline shell command helper
\newcommand{\shinline}[1]{\lstinline[basicstyle=\ttfamily]{#1}}

% -------------------------------------------------
% Default author (can be overridden)
% -------------------------------------------------
\author{Juni Kim \\ 6.S913}

% -------------------------------------------------
% End of class
% -------------------------------------------------
\endinput
