% Intro Options
\ProvidesClass{logan_resume}
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass[11pt]{article}


% --- Package Imports ---
\usepackage[hmargin=1pc, vmargin=2pc]{geometry}
\usepackage[hidelinks]{hyperref}
\usepackage{graphicx}
\usepackage[none]{hyphenat}
\usepackage[usenames,dvipsnames]{xcolor} % Add xcolor package back
% --- Color Definitions ---
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}


% --- Font Settings ---
\usepackage{fontspec}
\setmainfont[
  Color=primary,
  Path = fonts/lato/,
  BoldItalicFont=Lato-BolIta,
  BoldFont=Lato-Bol,
  ItalicFont=Lato-RegIta
]{Lato-Reg}


% --- Section Formatting (titlesec) ---
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{5pt}
\titlespacing{\subsection}{0pt}{0pt}{2pt}


% --- Separation Commands ---
\newcommand{\sectionsep}{\vspace{10pt}}
\newcommand{\sectionsepright}{\vspace{14pt}}


% --- Name/Blurb Command ---
\newcommand{\nameblurbsection}[2]{
  {% Grouping braces
    \raggedright%
    \fontsize{28pt}{34pt}%
    \fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont%
    #1\par%
    \vspace{10pt}%
    \fontsize{12pt}{16pt}\selectfont%
    #2\par%
    \normalfont%
  }
}


% --- Section Heading Format ---
\titleformat{\section}{%
  \color{headings}%
  \fontspec[Path = fonts/lato/]{Lato-Reg}%
  \fontsize{14pt}{16pt}\selectfont%
  \raggedright\uppercase%
}{}{0em}{}


% --- Subsection Heading Format ---
\titleformat{\subsection}{%
  \color{subheadings}%
  \fontspec[Path = fonts/lato/]{Lato-Bol}%
  \fontsize{10pt}{10pt}\selectfont%
  \raggedright\uppercase%
}{}{0em}{}


% --- Subsection Title Command (Manual) ---
\newcommand{\runsubsection}[1]{%
  \color{subheadings}%
  \fontspec[Path = fonts/lato/]{Lato-Bol}%
  \fontsize{12pt}{12pt}\selectfont%
  \uppercase{#1}%
  \normalfont%
}


% --- Education Entry Command ---
\newcommand{\education}[2]{%
  {% Grouping braces
    \raggedright%
    \fontspec[Path = fonts/lato/]{Lato-Bol}\selectfont%
    #1\par%
    \normalfont%
    #2%
  }%
}


% --- Subsection with Image Command ---
\newcommand{\runsubsectionimg}[4]{%
  \noindent% Prevent indentation
  \begin{minipage}[t]{0.06\textwidth}% Image column
    \vspace{0pt}% Align minipage contents to the top
    \includegraphics[height=2.1em]{#1}%
  \end{minipage}%
  \hspace{0.75em}% Space between image and text
  \begin{minipage}[t]{0.94\textwidth}% Text column
    \vspace{0pt}% Align minipage contents to the top
    % Line 1: Company Name (Bold, Uppercase) | Job Title (Regular)
    \color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{14pt}\selectfont\uppercase{#2} \normalfont% Company
    ~~|~~ % Separator
    \color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{12pt}{14pt}\selectfont{#3}\par % Title (ends the line)
    % Line 2: Dates | Location (Smaller, Regular)
    \color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{11pt}{13pt}\selectfont{#4} \normalfont% Dates/Location
  \end{minipage}%
}


% --- Bullet List Environment (Reduced Spacing) ---
\newenvironment{tightemize}{%
  \begin{itemize}%
    \itemsep4pt % Space between items
    \parskip0pt % Space between paragraphs within an item
    \parsep0pt % Space between paragraphs within an item
    \raggedright% Prevent justification within items
}
{\end{itemize}\vspace{-\topsep}} % Reduce space after the list

