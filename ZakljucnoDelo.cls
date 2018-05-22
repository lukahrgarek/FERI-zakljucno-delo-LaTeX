\NeedsTeXFormat{LaTeX2e} % Avtor: Luka Hrgarek {luka.hrgarek@um.si}
\ProvidesClass{ZakljucnoDelo}[2017/03/13]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
%Stran naj bo formata A4
\PassOptionsToClass{a4paper,twoside,12pt}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
\usepackage[utf8]{inputenc}
\usepackage[english,slovene]{babel}
\selectlanguage{slovene}
\usepackage{hyperref}
\usepackage{datetime}
\newdateformat{mesecLeto}{%
  \monthname[\THEMONTH] \THEYEAR}
\hypersetup{
    colorlinks,
    citecolor=black,
    filecolor=black,
    linkcolor=black,
    urlcolor=black,
    pdfencoding=auto,
    pdfproducer={LaTeX},
    pdfcreator={LaTeX}
}
\usepackage{fancyhdr}
\usepackage{tabularx}
\usepackage{titlesec}
\titleformat{\chapter}{\normalfont\huge\bf}{\thechapter}{16pt}{\huge\bf}
%Naslovi tabel naj bodo nad tabelami.
\usepackage{float}
\floatstyle{plaintop}
\restylefloat{table}
\usepackage{caption} 
\captionsetup[table]{skip=0.5em}
\usepackage{multicol}
\usepackage[tableposition=bottom]{caption}
\DeclareCaptionType{chart}[Graf][Kazalo grafov]

%Robovi besedila naj bodo zgoraj in spodaj oddaljeni 30 mm od roba strani, na levi (notranji) strani 30 mm in na desni (zunanji) strani 25 mm od roba strani
\usepackage{geometry}
 \geometry{
 a4paper,
 left=30mm,
 right=25mm,
 top=30mm,
 bottom=30mm,
 asymmetric
 }
\usepackage{graphicx}
\usepackage{amsmath}
\usepackage{tikz}
\usepackage{pgfplots}
\pgfplotsset{compat=newest}
\usepackage{listings}
\usepackage{xcolor}

\addto\captionsslovene{%
  \renewcommand*{\lstlistlistingname}{Kazalo izsekov programske kode}%
  \renewcommand*{\lstlistingname}{Izsek programske kode}%
}

\definecolor{editorGray}{rgb}{0.95, 0.95, 0.95}
\definecolor{editorOcher}{rgb}{1, 0.5, 0} % #FF7F00 -> rgb(239, 169, 0)
\definecolor{editorGreen}{rgb}{0, 0.5, 0} % #007C00 -> rgb(0, 124, 0)
\lstset{
    backgroundcolor=\color{editorGray},
    basicstyle={\small\ttfamily},   
    frame=l,
    % Line numbers
    xleftmargin={0.75cm},
    numbers=left,
    stepnumber=1,
    firstnumber=1,
    numberfirstline=true,
    % Code design   
    keywordstyle=\color{blue}\bfseries,
    commentstyle=\color{darkgray}\ttfamily,
    ndkeywordstyle=\color{editorGreen}\bfseries,
    stringstyle=\color{editorOcher},
    % Code
    %language=C++,
    alsodigit={.:;},
    tabsize=2,
    showtabs=false,
    showspaces=false,
    showstringspaces=false,
    extendedchars=true,
    breaklines=true
}

\newcommand{\ifempty}[3]{%
  \ifthenelse{\isempty{#1}}{#2}{#3}%
}
 
\addto\captionsslovene{\renewcommand{\listfigurename}{Kazalo slik}}
\addto\captionsslovene{\renewcommand{\listtablename}{Kazalo tabel}}

%Razmik med vrsticami naj bo 1,5 vrstice
\renewcommand{\baselinestretch}{1.5}
\setlength{\parskip}{0.8em}
\setlength{\parindent}{0em}

\def\univerza#1{\def\@univerza{#1}}
\newcommand{\pUniverza}{\@univerza}

\def\UNIVERZA#1{\def\@UNIVERZA{#1}}
\newcommand{\pUNIVERZA}{\MakeUppercase{\@univerza}}

\def\fakulteta#1{\def\@fakulteta{#1}}
\newcommand{\pFakulteta}{\@fakulteta}

\def\FAKULTETA#1{\def\@FAKULTETA{#1}}
\newcommand{\pFAKULTETA}{\MakeUppercase{\@fakulteta}}

\def\naslovZakljucnegaDela#1{\def\@naslovZakljucnegaDela{#1}}
\newcommand{\pNaslovZakljucnegaDela}{\@naslovZakljucnegaDela}

\def\NASLOVZAKLJUCNEGADELA#1{\def\@NASLOVZAKLJUCNEGADELA{#1}}
\newcommand{\pNASLOVZAKLJUCNEGADELA}{\MakeUppercase{\@naslovZakljucnegaDela}}

\def\naslovZakljucnegaDelaAng#1{\def\@naslovZakljucnegaDelaAng{#1}}
\newcommand{\pNaslovZakljucnegaDelaAng}{\@naslovZakljucnegaDelaAng}

\def\zakljucnoDelo#1{\def\@zakljucnoDelo{#1}}
\newcommand{\pZakljucnoDelo}{\@zakljucnoDelo}

\def\kljucneBesede#1{\def\@kljucneBesede{#1}}
\newcommand{\pKljucneBesede}{\@kljucneBesede}

\def\keywords#1{\def\@keywords{#1}}
\newcommand{\pKeywords}{\@keywords}

\def\UDK#1{\def\@UDK{#1}}
\newcommand{\pUDK}{\@UDK}

\def\povzetek#1{\def\@povzetek{#1}}
\newcommand{\pPovzetek}{\@povzetek}

\def\abstract#1{\def\@abstract{#1}}
\newcommand{\pAbstract}{\@abstract}

\def\vrstaStudijskegaPrograma#1{\def\@vrstaStudijskegaPrograma{#1}}
\newcommand{\pVrstaStudijskegaPrograma}{\@vrstaStudijskegaPrograma}

\def\imeStudijskegaPrograma#1{\def\@imeStudijskegaPrograma{#1}}
\newcommand{\pImeStudijskegaPrograma}{\@imeStudijskegaPrograma}

\def\smer#1{\def\@smer{#1}}
\newcommand{\pSmer}{\@smer}

\def\student{\@ifnextchar[{\@StudentZ}{\@StudentM}}
\def\@StudentZ[#1]#2{
        \newcommand{\pStudentLabel}{Študentka}
        \newcommand{\pstudentLabelPodpisani}{Podpisana}
        \newcommand{\pstudentLabel}{študentka}
        \newcommand{\pstudentLabelRodilnik}{študentke}
        \newcommand{\pstudentLabelIzdelal}{izdelala}
        \newcommand{\pstudentLabelPridobil}{pridobila}
        \newcommand{\pstudentLabelOznacil}{označila}
        \newcommand{\pstudentLabelSeznanjen}{seznanjena}
        \newcommand{\pstudentLabelOddal}{oddala}
        \newcommand{\pStudent}{#2}
    }
\def\@StudentM#1{
        \newcommand{\pStudentLabel}{Študent}
        \newcommand{\pstudentLabelPodpisani}{Podpisani}
        \newcommand{\pstudentLabel}{študent}
        \newcommand{\pstudentLabelRodilnik}{študenta}
        \newcommand{\pstudentLabelIzdelal}{izdelal}
        \newcommand{\pstudentLabelPridobil}{pridobil}
        \newcommand{\pstudentLabelOznacil}{označil}
        \newcommand{\pstudentLabelSeznanjen}{seznanjen}
        \newcommand{\pstudentLabelOddal}{oddal}
        \newcommand{\pStudent}{#1}
    }

\def\mentor{\@ifnextchar[{\@MentorZ}{\@MentorM}}
\def\@MentorZ[#1]#2{
        \newcommand{\pMentorLabel}{Mentor#1}
        \newcommand{\pmentorLabel}{mentor#1}
        \newcommand{\pMentorLabelRodilnik}{mentorice}
        \newcommand{\pMentor}{#2}
    }
\def\@MentorM#1{
        \newcommand{\pMentorLabel}{Mentor}
        \newcommand{\pmentorLabel}{mentor}
        \newcommand{\pMentorLabelRodilnik}{mentorja}
        \newcommand{\pMentor}{#1}
    }

\def\somentor{\@ifnextchar[{\@SomentorZ}{\@SomentorM}}
\def\@SomentorZ[#1]#2{
        \newcommand{\pSomentorLabel}{Somentor#1}
        \newcommand{\psomentorLabel}{somentor#1}
        \newcommand{\pSomentorLabelRodilnik}{somentorice}
        \newcommand{\pSomentor}{#2}
    }
\def\@SomentorM#1{
        \newcommand{\pSomentorLabel}{Somentor}
        \newcommand{\psomentorLabel}{somentor}
        \newcommand{\pSomentorLabelRodilnik}{somentorja}
        \newcommand{\pSomentor}{#1}
    }

\def\lektor{\@ifnextchar[{\@LektorZ}{\@LektorM}}
\def\@LektorZ[#1]#2{\newcommand{\pLektor}{Lektor#1: & #2}}
\def\@\@LektorM#1{\newcommand{\pLektor}{Lektor: & #1}}

\def\datum#1{\def\@datum{#1}}
\newcommand{\pDatum}{\@datum}

\def\kraj#1{\def\@kraj{#1}}
\newcommand{\pKraj}{\@kraj}

\def\IDstevilka#1{\def\@IDstevilka{#1}}
\newcommand{\pIDstevilka}{\@IDstevilka}

\def\vpisnaStevilka#1{\def\@vpisnaStevilka{#1}}
\newcommand{\pVpisnaStevilka}{\@vpisnaStevilka}


\renewcommand\maketitle{
  \hypersetup{pdftitle={\pNaslovZakljucnegaDela}}
  \hypersetup{pdfsubject=\pZakljucnoDelo}
  \hypersetup{pdfauthor=\pStudent}
  \hypersetup{pdfkeywords=\pKljucneBesede}
  \thispagestyle{empty}
  \begin{titlepage}
    \vskip 60\p@
    \begin{center}
      \setlength{\parskip}{0pt}
      {\large\textbf{\pUNIVERZA}\par}
      {\large\textbf{\pFAKULTETA}\par}
      \vfill
      {\Large \pStudent \par}
      \bigskip
      {\LARGE \bf \pNASLOVZAKLJUCNEGADELA \par}
      \bigskip
      {\Large \pZakljucnoDelo \par}
      \vfill
      {\Large \pKraj, {\mesecLeto\pDatum} \par}
    \end{center}
  \clearpage
  %---------------------------------
  \thispagestyle{empty}
  \begin{center}
      \setlength{\parskip}{0pt}
      \vspace*{\fill}
      {\Large \bf \pNASLOVZAKLJUCNEGADELA \par}
      \bigskip
      {\large \textbf{\pZakljucnoDelo} \par}
      \vfill
    \end{center}
    \begin{tabular}{ l l }
        \pStudentLabel: & \pStudent \\
        Študijski program:  & \pVrstaStudijskegaPrograma \\
        & \pImeStudijskegaPrograma \\
        Smer: & \pSmer\\
        \pMentorLabel: & \pMentor \\
        \pSomentorLabel: & \pSomentor \\
        \pLektor \\
\end{tabular}
  \end{titlepage}
  \setcounter{footnote}{0}%
  \global\let\maketitle\relax
  \cleardoublepage
}


\newcommand{\makepovzetek}{
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
    \cfoot{\thepage}
    \pagestyle{fancy}  
    \pagenumbering{Roman}
    \vspace*{10em}
    {\noindent\LARGE \pNaslovZakljucnegaDela}\par
    \bigskip
    \noindent\textbf{Ključne besede:} \pKljucneBesede \par
    \bigskip
    \noindent\textbf{UDK:} \pUDK \par
    \vspace{4em}
    \noindent\textbf{Povzetek}\par
    \bigskip
    \noindent\emph{\pPovzetek}
    \clearpage
    %---------------------------------
    \selectlanguage{english}
    \vspace*{10em}
    {\noindent\LARGE \pNaslovZakljucnegaDelaAng}\par
    \bigskip
    \noindent\textbf{Key words:} \pKeywords \par
    \bigskip
    \noindent\textbf{UDK:} \pUDK \par
    \vspace{4em}
    \noindent\textbf{Abstract}\par
    \bigskip
    \noindent\emph{\pAbstract}
    \clearpage
    \selectlanguage{slovene}
}

\fancypagestyle{mainmatter}{
  \renewcommand{\headrulewidth}{.4pt}
  \renewcommand{\footrulewidth}{0pt}
  \fancyhf{}
  \fancyhead[L]{\leftmark}
  \fancyhead[R]{\thepage}
  \setlength{\headheight}{15pt} 
}