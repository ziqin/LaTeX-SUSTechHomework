% !TEX TS-program = xelatex
% !TEX encoding = UTF-8
% !Mode:: "TeX:UTF-8"

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{SUSTechHomework}[2019/03/09 SUSTech Homework LaTeX class]

\LoadClass[a4paper]{article}

\RequirePackage{newpxtext,newpxmath}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{amsmath}
\RequirePackage{listings}
\RequirePackage{xeCJK}
\RequirePackage[T1]{fontenc}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\RequirePackage{booktabs}
\RequirePackage{parskip}
\RequirePackage[hidelinks]{hyperref}
% \RequirePackage{courier}
\RequirePackage{inconsolata}

% \DeclareOption{titlepage}{}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\def\sid#1{\gdef\@sid{#1}}
\def\@sid{\@latex@error{No \noexpand\sid given}\@ehc}

\def\coursename#1{\gdef\@coursename{#1}}
\def\@coursename{\@latex@error{No \noexpand\coursename given}\@ehc}

\def\coursecode#1{\gdef\@coursecode{#1}}
\def\@coursecode{\@latex@error{No \noexpand\coursecode given}\@ehc}

\def\univ#1{\gdef\@univ{#1}}
\def\@univ{\@latex@error{No \noexpand\univ given}\@ehc}

\univ{SUSTech}

\geometry{
    left=.85in,
    right=.85in,
    top=1in,
    bottom=.8in,
    bindingoffset=.15in
}

\setlength{\parindent}{0pt}
\renewcommand{\baselinestretch}{1.1}

\newcommand{\mktitle}{
    \noindent\makebox[\linewidth]{
        \begin{minipage}[b]{.7\linewidth}
            {\Large\textsf{\@coursecode~$\cdot$~\@coursename}}\\\\
            {\Huge\textbf\@title}
        \end{minipage}\hfill
        \begin{minipage}[b]{.3\linewidth}
            \large\begin{flushright}
                \@author~/~\@sid\\
                \vspace{.5em}
                \@date
            \end{flushright}
        \end{minipage}
    }
    \noindent\rule{\linewidth}{1.5pt}
    \if@twocolumn\vspace{.5em}\fi
    \thispagestyle{empty}
}

\if@twocolumn
	\renewcommand{\maketitle}{\twocolumn[\mktitle]}
\else
	\renewcommand{\maketitle}{\mktitle}
\fi

\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0.3pt}

\if@twoside
    \fancyhead[EL,OR]{\thepage~/~\pageref{LastPage}}
    \fancyhead[EC]{\textsc{\@coursename}}
    \fancyhead[ER]{\@title}
    \fancyhead[OL]{\@univ~$\circ$~\@coursecode}
    \fancyhead[OC]{\textsc{\@author  $\cdot$ \@sid}}
\else
    \lhead{\textsc{\@author $\cdot$ \@sid}}
    \chead{\textsc{\@coursename~$\circ$~\@title}}
    \rhead{\thepage~/~\pageref{LastPage}}
\fi

\lstset{
    numbers=left,
    basicstyle=\ttfamily,
    frame=shadowbox,
    columns=flexible,
    xleftmargin=1.5em,
    xrightmargin=1em
}
