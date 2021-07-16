\NeedsTeXFormat{LaTeX2e} % require latex of the 2nd edition
\ProvidesClass{phd_class}[2019/07/01 The style for unaboomers]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% kbordermatrix             MUSE             BE            PLACED             IN
% /usr/local/texlive/2016/texmf-dist/tex/latex/base and then run sudo -s texhash
% to load it up
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Document options
\LoadClass{article}

%%% Handle the autistic warnings that LaTeX insists that you see
\RequirePackage{silence}%
\WarningFilter{hyperref}{Token not allowed in a PDF}%
\WarningFilter{biblatex}{The following entry could not be found}%
\WarningFilter{fancyhdr}{\headheight is too small}%
\WarningFilter{latex}{Label `key' multiply defined}%
\WarningFilter{latex}{`h' float specifier changed to `ht'}%
\WarningFilter{latex}{`h' float specifier changed to `ht'}%
\WarningFilter{latex}{Command \textsection invalid in math mode}%
\WarningsOff[pdftex,biblatex,biber]%
\pdfsuppresswarningpagegroup=1%
% Overfull errors
\hfuzz=\maxdimen%
\vfuzz=1000pt%
% Underfull errors
\hbadness=99999 \vbadness=99999

\DeclareUnicodeCharacter{0301}{*************************************}

%%% Spacings
\RequirePackage{geometry}%
\geometry{top=25mm}%
\geometry{bottom=35mm}%
\geometry{left=30mm}%
\geometry{lines=40}%
\geometry{right=20mm}%
\RequirePackage{microtype}

%%% Common Packages
\RequirePackage[usenames,dvipsnames,svgnames,table,rgb]{xcolor} % for colouring \color{red!20}
\RequirePackage{bookmark}%
\RequirePackage{graphics} % to include image
\RequirePackage{caption} % image captions
\RequirePackage{framed} % \begin{framed} for framed boxes
\RequirePackage{multirow} % merge rows in talbes

%%% Pagecolor
\RequirePackage{pagecolor}%

%%% Maths settings
\RequirePackage{amsmath,amsfonts,amssymb,amsthm,mathtools} % all mathematical fonts
\RequirePackage{mathdots} % to use \udots
\RequirePackage{esint} % fancy integrals
\mathtoolsset{showonlyrefs=true} % only label formulas with references
\RequirePackage{comma} % smart comma spacing e.g $0,3$ becomes a list $0, 3$
\relpenalty=9999 % prevent splitting of equations

%%% Theorems
\makeatletter                 \let\@addpunct\@gobble                \makeatother
\renewcommand\qedsymbol{QED$ \quad \square$}

%%% Physics Packages
\RequirePackage{qcircuit} % for quantum circuits
\RequirePackage{braket} % \Bra and \Ket
\RequirePackage{kbordermatrix} % label matrix rows and columns

%%% Images with Inkscape (they are used by it)
\RequirePackage{xifthen}  \RequirePackage{pdfpages} \RequirePackage{transparent}
\RequirePackage{import} % \import{folder}{file}

%%% Bibliography
\RequirePackage[backend=biber,
% style=authoryear-icomp,
natbib=true, url=true, doi=true]{biblatex}

%%% URLS and Links
\RequirePackage{url} % add url in bibliography


%%% Section titles
\RequirePackage{titlesec}

\titleformat{name=\section} % customize the section command
[frame] % put label in frame
{\normalfont} % format to apply to the whole title
{\footnotesize % label
  \filright \enspace {\color{gray} CHAPTER \thesection}\enspace}
{3pt} % separation between label and title
{ \Huge\sc\raggedright} % code preceding the title body
{} % code after title body

%%% Define Page Headers
\RequirePackage{fancyhdr}%
\pagestyle{fancy}%
\setlength{\headheight}{25pt}%
\renewcommand{\headrulewidth}{2pt} % line thickness for top row
\rfoot{}%
\cfoot{\thepage}%
\lfoot{}
% \rhead{\thechapter}
\chead{}%
\lhead{CHAPTER \thesection}

% ⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿
% ⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿
% ⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿⦿


%%% COLOURS
\newcommand{\red}[1]{{\color{red}{#1}}}
\newcommand{\blue}[1]{{\color{blue}{#1}}}
\newcommand{\green}[1]{{\color[rgb]{0,0.50196078,0}{#1}}}
\newcommand{\purple}[1]{{\color{purple}{#1}}}
\newcommand{\grey}[1]{{\color{gray!60} #1}} \newcommand{\ec}{
} % end colour command for emacs regexp
\definecolor{amber}{rgb}{9.0,0.65,0.0}%
\definecolor{slate}{rgb}{0.32,0.52,0.54}%
\definecolor{ballblue}{rgb}{0.13,0.67,0.8}%
\newcommand{\ballblue}[1]{{\color{ballblue}{#1}}}
\newcommand{\gold}[1]{{\color{amber}{#1}}}
\newcommand{\slate}[1]{{\color{slate}{#1}}}


%%% Physics
\newcommand{\schrodinger}{Schr\"{o}dinger}
\newcommand{\iket}[1]{\ensuremath{\Ket{#1}}}
\newcommand{\ibra}[1]{\ensuremath{\Bra{#1}}}%
\newcommand{\iketbra}[2]{%
  \ket{#1}\bra{#2}%
}\newcommand{\idensity}{\ensuremath{\begin{pmatrix}{\rho_{00}}                    &
      {\rho_{01}}\\{\rho_{10}}&{\rho_{11}}\end{pmatrix}}}

\newcommand{\isuperposition}[1]{\ensuremath{\frac{\iket{0}#1\iket{1}}{\sqrt{2}}}}

\newcommand{\iup}{\ensuremath{\Ket{\uparrow}}}
\newcommand{\idown}{\ensuremath{\Ket{\downarrow}}}
\newcommand{\isigma}{\ensuremath{\vec{\iaverage{\sigma}}}}
\newcommand{\isigmax}{\ensuremath{{\iaverage{\sigma_x}}}}
\newcommand{\isigmay}{\ensuremath{{\iaverage{\sigma_y}}}}
\newcommand{\isigmaz}{\ensuremath{{\iaverage{\sigma_z}}}}
\newcommand{\iadagger}{\ensuremath{a^{\dagger}}}
\newcommand{\isigmaplus}{\ensuremath{\iaverage{\sigma^{+}}}}
\newcommand{\isigmaminus}{\ensuremath{\iaverage{\sigma^{-}}}}
\newcommand{\isigmaplusminus}{\ensuremath{\iaverage{\sigma^{\pm}}}}

\newcommand{\iz}{\ensuremath{\begin{pmatrix}1&0\\0&-1\end{pmatrix}}}
\newcommand{\ix}{\ensuremath{\begin{pmatrix}0&1\\1&0\end{pmatrix}}}
\newcommand{\iy}{\ensuremath{\begin{pmatrix}0&-i\\i&0\end{pmatrix}}}

%%% Math simplicity
\newcommand{\mum}{\ensuremath{\,\mu\text{m}}}
\newcommand{\fF}{\ensuremath{\,\text{fF}}}
\newcommand{\nmsq}{\ensuremath{\,\text{nm}^2}}
\newcommand{\kOhm}{\ensuremath{\,\text{k}\Omega}}
\newcommand{\re}[1]{\Re\left[#1\right]}      \newcommand{\im}[1]{\Im\left[#1\right]}
\newcommand{\iunit}[2]{\ensuremath{#1\,\text{#2}}}
\newcommand{\iabsSquared}[1]{\ensuremath{\left|#1\right|^2}}
\newcommand{\iabs}[1]{\ensuremath{\left|#1\right|}}
\newcommand{\iaverage}[1]{\ensuremath{\left\langle             #1            \right\rangle}}
\newcommand{\iderivative}[2]{%
  \ensuremath{%
    \frac{\partial#1}{\partial#2}}}    \newcommand{\ipartial}[2]{\ensuremath{\frac{\partial#1}{\partial#2}}}
\newcommand{\itrace}[1]{\ensuremath{\text{Tr}\left\lbrace#1\right\rbrace}}
\DeclareMathOperator{\Tr}{Tr}           \newcommand{\idagger}{\ensuremath{^{\dagger}}}
\newcommand{\iRa}{\ensuremath{\quad\Rightarrow\quad}}      \newcommand{\ira}{\ensuremath{\rightarrow}\     }
\newcommand{\ilra}{\ensuremath{\,\leftrightarrow\,}}
\newcommand{\iratext}[1]{\ensuremath{\,\xrightarrow{\text{#1}}\,}}
\newcommand{\iexpectation}[1]{\ensuremath{\left\langle#1\right\rangle}}
\newcommand{\ibaseten}[1]{\ensuremath{^{#1}}}
\newcommand{\imatrixfour}[4]{\ensuremath{\begin{pmatrix}#1&#2\\#3&#4\end{pmatrix}}}
\newcommand{\imatrixTwoColTwoRow}[4]{\ensuremath{\begin{pmatrix}#1&#2\\#3&#4\end{pmatrix}}}
\newcommand{\imatrixThreeCol}[3]{\begin{pmatrix}#1\\#2\\#3\end{pmatrix}}
\newcommand{\imatrixTwoCol}[2]{\begin{pmatrix}#1\\#2\end{pmatrix}}
\newcommand{\imatrixcol}[2]{\ensuremath{\begin{pmatrix} #1\\#2
    \end{pmatrix}}}  \newcommand{\imatrixquad}[4]{\ensuremath{\begin{pmatrix} #1
      & #2 \\#3 & #4
    \end{pmatrix}}}          \newcommand{\icommutation}[2]{\ensuremath{\left[#1,
      #2\right]}}

%% Images with Inkscape (they are used by it)
\RequirePackage{xifthen}%
\RequirePackage{pdfpages}%
\RequirePackage{transparent}%
\RequirePackage{import}%

\newcommand{\inkfig}[2]{%
  \def\svgwidth{#1}%
  \import{images_inkscape/}{#2.pdf_tex}%
}


%% Define what directories are searched when using \input
\makeatletter                                    \providecommand*{\input@path}{}
\g@addto@macro\input@path{{images_inkscape/}}% append
\makeatother

%%% Matrix drawing with Tikz
\RequirePackage{tikz} \usetikzlibrary{calc}

\RequirePackage[nodisplayskipstretch]{setspace} \setstretch{1.5}

\newcommand{\tikzmark}[1]{\tikz[overlay,remember   picture]   \node  (#1)   {};}
\newcommand{\DrawBox}[4][]{%
  \tikz[overlay,remember picture]{%
    \coordinate (TopLeft) at ($(#2)+(-0.2em,1em)$); \coordinate (BottomRight) at
    ($(#3)+(0.2em,-0.4em)$);
        %
    \path (TopLeft);  \pgfgetlastxy{\XCoord}{\IgnoreCoord}; \path (BottomRight);
    \pgfgetlastxy{\IgnoreCoord}{\YCoord};     \coordinate    (LabelPoint)     at
    ($(\XCoord,\YCoord)!0.5!(BottomRight)$);
        %
    \draw  [red,#1]   (TopLeft)  rectangle  (BottomRight);  \node   [below,  #1,
    fill=none, fill opacity=1] at (LabelPoint) {#4}; } }

%%% Cool fonts
\RequirePackage{fontawesome}

%%% Adding code
\RequirePackage{listings} % Required for inserting code snippets

\definecolor{DarkGreen}{rgb}{0.0,0.4,0.0} % Comment color
\definecolor{python-yellow}{RGB}{255,251,204} % Code python-yellow color

\lstnewenvironment{python}{\lstset{                             language=python,
    backgroundcolor=\color{python-yellow},
    basicstyle=\footnotesize\ttfamily, % The default font size and style of the code
    breakatwhitespace=false, % If true, only allows line breaks at white space
    breaklines=true, % Automatic line breaking (prevents code from protruding outside the box
    captionpos=b, % Sets the caption position: b for bottom; t for top
    commentstyle=\usefont{T1}{pcr}{m}{sl}\color{DarkGreen}, % Style of comments within the code - dark green courier font
    deletekeywords={}, % If you want to delete any keywords from the current language separate them by commas
    % escapeinside={\%}, % This allows you to escape to LaTeX using the character in the bracket
    firstnumber=1, % Line numbers begin at line 1
    frame=single, % Frame around the code box, value can be: none, leftline, topline, bottomline, lines, single, shadowbox
    frameround=tttt, % Rounds the corners of the frame for the top left, top right, bottom left and bottom right positions
    keywordstyle=\color{Blue}\bf, % Functions are bold and blue
    morekeywords={}, % Add any functions no included by default here separated by commas
    numbers=left, % Location of line numbers, can take the values of: none, left, right
    numbersep=10pt, % Distance of line numbers from the code box
    numberstyle=\tiny\color{Gray}, % Style used for line numbers
    rulecolor=\color{black}, % Frame border color
    showstringspaces=false, % Don't put marks in string spaces
    showtabs=false, % Display tabs in the code as lines
    stepnumber=5, % The step distance between line numbers, i.e. how often will lines be numbered
    stringstyle=\color{Purple}, % Strings are purple
    tabsize=2, % Number of spaces per tab in the code
  }}{}            \lstnewenvironment{cmdline}{\lstset{            language=bash,
    backgroundcolor=\color{Black!10},
    basicstyle=\footnotesize\ttfamily, % The default font size and style of the code
    breakatwhitespace=false, % If true, only allows line breaks at white space
    breaklines=true, % Automatic line breaking (prevents code from protruding outside the box
    captionpos=b, % Sets the caption position: b for bottom; t for top
    commentstyle=\usefont{T1}{pcr}{m}{sl}\color{DarkGreen}, % Style of comments within the code - dark green courier font
    deletekeywords={}, % If you want to delete any keywords from the current language separate them by commas
    % escapeinside={\%}, % This allows you to escape to LaTeX using the character in the bracket
    firstnumber=1, % Line numbers begin at line 1
    frame=single, % Frame around the code box, value can be: none, leftline, topline, bottomline, lines, single, shadowbox
    frameround=tttt, % Rounds the corners of the frame for the top left, top right, bottom left and bottom right positions
    keywordstyle=\color{Blue}\bf, % Functions are bold and blue
    morekeywords={}, % Add any functions no included by default here separated by commas
    numbers=left, % Location of line numbers, can take the values of: none, left, right
    numbersep=10pt, % Distance of line numbers from the code box
    numberstyle=\tiny\color{Gray}, % Style used for line numbers
    rulecolor=\color{black}, % Frame border color
    showstringspaces=false, % Don't put marks in string spaces
    showtabs=false, % Display tabs in the code as lines
    stepnumber=5, % The step distance between line numbers, i.e. how often will lines be numbered
    stringstyle=\color{Purple}, % Strings are purple
    tabsize=2, % Number of spaces per tab in the code
  }}{}

%%% Autoref
% First autoref should be capitalised
\RequirePackage{hyperref} % linking within document \hyperref[label]{text}
\newcommand{\Autoref}[1]{%
  \begingroup%
  \renewcommand\equationautorefname{Equation}%
  \renewcommand\figureautorefname{Figure}%
  \renewcommand\tableautorefname{Table}%
  \autoref{#1}%
  \endgroup%
}
% Subsequent ones should be short
\def\equationautorefname~#1\null{%
  Eq.~(#1)\null%
}%
\renewcommand{\equationautorefname}{Eq.}%
\renewcommand{\figureautorefname}{Fig.}%
\renewcommand{\tableautorefname}{Tab.}%
\renewcommand{\sectionautorefname}{Sec.}%
\renewcommand{\subsectionautorefname}{Subsec.}%
\renewcommand{\subsubsectionautorefname}{Ch.}%

%%% PDF Metadata and colour
\hypersetup{%
  unicode=true,%
  pdftitle={},%
  pdfauthor={Ilya Antonov},%
  pdfsubject={},%
  pdfcreator={Ilya Antonov},%
  pdfkeywords={} {} {},%
  colorlinks=false,% links in color (true) or boxes (false)
  linkcolor=black,% internal links
  citecolor=blue!30,% bib links
  filecolor=magenta!20,% file links
  urlcolor=cyan% url links
}
