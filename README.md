# resume-latex
This is a simple **one page**, **single column** resume template in LaTeX that can be published using `pdfLaTeX`.

I prefer to use a `.cls` class file to keep the main `.tex` file cleaner.

I have tried to use minimal LaTeX packages and avoid LaTeX formatting such as `vspace=-7mm`.

## Setup
On Debian Linux, install texlive:
```sh
sudo apt install texlive
```
To publish the resume as a PDF:
```sh
pdflatex resume.tex
```

## License
LPPL version 1.3c. See [License](https://www.latex-project.org/lppl.txt) for more details.
