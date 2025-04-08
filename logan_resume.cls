% Intro Options
\ProvidesClass{logan_resume}
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass[11pt]{article}

% Package Imports
\usepackage[hmargin=1pc, vmargin=2pc]{geometry}
\usepackage[hidelinks]{hyperref}
\usepackage{graphicx}
\usepackage[none]{hyphenat}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor}
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Color=primary, Path = fonts/lato/,BoldItalicFont=Lato-BolIta,BoldFont=Lato-Bol,ItalicFont=Lato-RegIta]{Lato-Reg}

% Section seperators
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{5pt}
\titlespacing{\subsection}{0pt}{0pt}{2pt}

% Seperation command
\newcommand{\sectionsep}{\vspace{12pt}}

% Name command
\newcommand{\nameblurbsection}[2]{
  {
    \raggedright
    \fontsize{28pt}{34pt}
    \fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont
    #1\par
    \vspace{8pt}
    \fontsize{12pt}{16pt}\selectfont
    #2\par
    \normalfont
    }
}


% Headings command
\titleformat{\section}{
  \color{headings}\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{14pt}{16pt}\selectfont\raggedright\uppercase}{}{0em}{}

% Subeadings command
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{10pt}{10pt}\selectfont\raggedright\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\uppercase {#1} \normalfont}

% Education command
\newcommand{\education}[2]{
  {
    \raggedright
    \fontspec[Path = fonts/lato/]{Lato-Bol}\selectfont
    #1\par
    \normalfont
    #2
  }
}

% Subsection
\newcommand{\runsubsectionimg}[4]{%
    \noindent%
    \begin{minipage}[t]{0.06\textwidth}%
        \vspace{0pt}%
        \includegraphics[height=2.1em]{#1}%
    \end{minipage}%
    \hspace{0.75em}%
    \begin{minipage}[t]{0.94\textwidth}%
        \vspace{0pt}%
        \color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{14pt}\selectfont\uppercase {#2} \normalfont
        ~~|~~
        \color{subheadings}\raggedright\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{12pt}{14pt}\selectfont {#3 \par} \normalfont
        \color{subheadings}\raggedright\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{11pt}{13pt}\selectfont {#4} \normalfont
    \end{minipage}%
}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
  \begin{itemize}\itemsep4pt \parskip0pt \parsep0pt \raggedright
}
{\end{itemize}\vspace{-\topsep}}

