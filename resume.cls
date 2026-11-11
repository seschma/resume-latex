%% resume.cls

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2026/11/10 LaTeX class file for my personal Resume]

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

% Set hyperlinks (requires hyperref package)
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

% Customize sections (requires titlesec package)
% This removes section numbers and adds a gray dividing line undereath sections
\titleformat{\section}
  {\normalfont\Large\bfseries}             % Font style of the section title
  {}                                       % Remove section number by leaving empty
  {0em}                                    % Space between number and title
  {}                                       % Code before the title
  [{\color{lightgray}\titlerule[0.8pt]}]   % Line below the title

% Commands
\newcommand*{\resumeauthor}[1]{\def\@resumeauthor{#1}}
\newcommand*{\address}[1]{\def\@address{#1}}
\newcommand*{\phone}[1]{\def\@phone{#1}}
\newcommand*{\email}[1]{\def\@email{#1}}
\newcommand*{\github}[1]{\def\@github{#1}}

\newcommand{\printheader}{
  \begin{center}
    \textbf{\huge\@resumeauthor}\par%
    \medskip
    \@address \quad|\quad
    \@phone \quad|\quad
    \href{mailto:\@email}{\@email} \quad|\quad
    \href{https://\@github}{\@github}
  \end{center}
}

\newcommand{\resumesubsection}[4]{%
  \textbf{#1}\hfill{#2}\par
  {#3}\hfill{#4}\par
}

\newcommand{\resumeskills}[2]{%
  \textbf{#1}: {#2}\par
}
