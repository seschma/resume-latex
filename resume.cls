%% resume.cls

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2026/11/10 LaTeX class file for my personal Resume]

\LoadClass{article}

% Check for obsoleted LaTeX packages
%\RequirePackage[l2tabu,orthodox]{nag}

% Packages
\usepackage[T1]{fontenc} 
\RequirePackage{geometry}  % used to set page margins
\RequirePackage{hyperref}  % used for PDF metadata and URL hyperlinks  

% Set Resume geometry
\geometry{
  top=20mm,
  bottom=20mm,
  left=20mm,
  right=20mm,
}

\hypersetup{
  hidelinks
}

% Set PDF metadata
%\hypersetup{
%  pdftitle={\@resumeauthor},
%  pdfauthor={\@resumeauthor}
%}

% Remove page numbers
\pagestyle{empty}

% Do not indent paragraphs
\setlength{\parindent}{0em}

% Commands
\newcommand*{\resumeauthor}[1]{\def\@resumeauthor{#1}}
\newcommand*{\address}[1]{\def\@address{#1}}
\newcommand*{\phone}[1]{\def\@phone{#1}}
\newcommand*{\email}[1]{\def\@email{#1}}
\newcommand*{\github}[1]{\def\@github{#1}}

\newcommand{\printheader}[1]{
  \begin{center}
    \textbf{\huge\@resumeauthor}\par%
    \smallskip
    \@address \quad|\quad
    \@phone \quad|\quad
    \href{mailto:\@email}{\@email} \quad|\quad
    \href{https://\@github}{\@github}
  \end{center}
}

\newcommand{\resumesubsection}[4]{%
  {#1}\hfill{#2}\par
  {#3}\hfill{#4}\par
}

\newcommand{\resumeskills}[2]{%
  \textbf{#1}: {#2}\par
}
