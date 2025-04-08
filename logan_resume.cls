% Intro Options
\ProvidesClass{logan_resume}
\NeedsTeXFormat{LaTeX2e}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1pc, vmargin=2pc]{geometry}
\usepackage[hidelinks]{hyperref}
\usepackage{graphicx}
\usepackage[none]{hyphenat}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor}
\definecolor{date}{HTML}{666666}
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Color=primary, Path = fonts/lato/,BoldItalicFont=Lato-BolIta,BoldFont=Lato-Bol,ItalicFont=Lato-RegIta]{Lato-Reg}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}

% Date command
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{\begin{textblock}{60}(155,5)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont
Last Updated on \today
\end{textblock}}

% % Name command
% \newcommand{\namesection}[1]{
%   {
%     \raggedright
%     \fontsize{28pt}{28pt}
%     \fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont
%     #1
%   }
% }

\newcommand{\namesection}[1]{%
  \fbox{%
    \parbox{\textwidth}{%
      \raggedright
      \fontsize{28pt}{28pt}
      \fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont
      #1
    }%
  }%
}

% Section seperators
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{}{0em}{}

% Subeadings command
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{
\color{subheadings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

\newcommand{\runsubsectionimg}[4]{%
    \noindent%
    \begin{minipage}[t]{0.06\textwidth}%
        \vspace{0pt}%
        \includegraphics[height=2em]{#1}%
    \end{minipage}%
    \hspace{0.5em}%
    \begin{minipage}[t]{0.94\textwidth}%
        \vspace{0pt}%
        \color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#2}  \normalfont
        \color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#3 \\} \normalfont
        \color{subheadings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {#4\\} \normalfont
    \end{minipage}%
    \vspace{-5pt}
}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}

