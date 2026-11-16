%% resume.cls
%% Copyright 2026 Stefan Eschmann
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   https://www.latex-project.org/lppl.txt
% and version 1.3c or later is part of all distributions of LaTeX
% version 2008 or later.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2026/11/10 LaTeX class file for my personal Resume]

% Use the standard article class to base this .cls file on
\LoadClass{article}

% Check for obsoleted LaTeX packages
\RequirePackage[l2tabu,orthodox]{nag}

% Packages
\RequirePackage[T1]{fontenc} % enable 8-bit encoded fonts
\RequirePackage{geometry}    % required to set PDF page margins
\RequirePackage{hyperref}    % required for PDF metadata and URL hyperlinks  
\RequirePackage{titlesec}    % required to customize sections
\RequirePackage{xcolor}      % required for colors such as grey in section line dividers

% Set Resume geometry
\geometry{
  top=20mm,
  bottom=20mm,
  left=20mm,
  right=20mm,
}

% Set hyperlinks and PDF metadata (requires hyperref package)
\AtEndPreamble{
  \hypersetup{
    hidelinks,
    pdftitle={\@resumeauthor~-- R\'{e}sum\'{e}},
    pdfauthor={\@resumeauthor},
    pdfsubject={R\'{e}sum\'{e} of \@resumeauthor},
    pdfkeywords={R\'{e}sum\'{e}, Software Engineer, Data Engineer}}
}

% Print name and personal details
\AtBeginDocument{
  \printheader
}

% Remove page numbers
\pagestyle{empty}

% Do not indent paragraphs
\setlength{\parindent}{0em}

% Customize sections (requires titlesec package)
% This removes section numbers and adds a gray dividing line undereath sections
\titleformat{\section}
  {\normalfont\Large\bfseries}             % Font style of the section title
  {}                                       % Remove section number by leaving empty
  {0em}                                    % Space between number and title
  {}                                       % Code before the title
  [{\color{lightgray}\titlerule[.05em]}]    % Line below the title

% Set section spacing before/after
\titlespacing{\section}{0em}{1em}{1em}  

  
% Commands
\newcommand*{\resumeauthor}[1]{\def\@resumeauthor{#1}}
\newcommand*{\address}[1]{\def\@address{#1}}
\newcommand*{\phone}[1]{\def\@phone{#1}}
\newcommand*{\email}[1]{\def\@email{#1}}
\newcommand*{\github}[1]{\def\@github{#1}}

\newcommand{\printheader}{%
  \begin{center}
    \textbf{\huge\@resumeauthor}\par%
    \medskip
    \@address
    \quad|\quad
    \@phone
    \quad|\quad
    \href{mailto:\@email}{\@email}
    \quad|\quad
    \href{https://\@github}{\@github}
  \end{center}
}

% Usage:
% \resumesubsection{Position}{Year}{Company/institution name}{Location}
\newcommand{\resumesubsection}[4]{%
  \textbf{#1}\hfill{#2}\par
  \smallskip
  {#3}\hfill{#4}\par
}

% Usage:
% \resumeskills{Skillname}{Skilltype1, Skilltype2 etc.}
\newcommand{\resumeskills}[2]{%
  \textbf{#1}: {#2}\par
}

% Usage:
% \resumeproject{Project name}{Language Type}{Year}
\newcommand{\resumeproject}[3]{%
  \textbf{#1} $|$ \textit{#2}\hfill{#3}\par
}
