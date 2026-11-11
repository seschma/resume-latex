%% resume.cls

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2026/11/10 LaTeX class file for my personal Resume]

\LoadClass{article}

% Check for obsoleted LaTeX packages
%\RequirePackage[l2tabu,orthodox]{nag}

% Packages
\RequirePackage[a4paper]{geometry} % used to set page margins
\RequirePackage{hyperref}          % used for PDF metadata and URL hyperlinks  

% Set Resume geometry
\geometry{
  top=20mm,
  bottom=20mm,
  left=20mm,
  right=20mm,
}

% Do not indent paragraphs
\setlength{\parindent}{0pt}

% Commands
\newcommand*{\resumeauthor}[1]{\def\@resumeauthor{#1}}

\newcommand{\printauthor}[1]{
  \begin{center}
    \huge{\@resumeauthor}
  \end{center}
}

\newcommand{\resumesubsection}[2]{
  {#1}\hfill{#2}
}

\newcommand{\resumeskills}[2]{
  {#1}: {#2}\par
}
