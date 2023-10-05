\ProvidesClass{classes/report}[2021/02/16 report]

\LoadClass[a4paper,11pt, uplatex]{jsreport}

\usepackage{silence}
\WarningFilter{caption}{Unknown document}

\usepackage{subfiles}
\usepackage{listings}
\usepackage{plistings}
\usepackage{color}
\usepackage[dvipdfmx]{graphicx}
\usepackage{url}
\usepackage{siunitx}
\usepackage{enumerate}
\usepackage{paralist}
\usepackage{amsmath,amssymb}
\usepackage{mathtools}
\usepackage{times}
\usepackage[newfloat]{minted}
\usepackage[hang,small,bf,labelsep=space]{caption}
\usepackage[subrefformat=parens]{subcaption}
\usepackage{framed}
\usepackage[dvipdfmx]{pdfpages}
\usepackage[backend=biber,style=ieee]{biblatex}
\addbibresource{references.bib}
\captionsetup{compatibility=false}

\newcommand{\code}[1]{\texttt{#1}}

\setcounter{tocdepth}{2}
\setcounter{secnumdepth}{4}

\renewcommand{\figurename}{\normalsize Fig.}
\renewcommand{\tablename}{\normalsize Table}

\SetupFloatingEnvironment{listing}{name=Code.}

\usepackage[dvipdfmx]{hyperref}
\hypersetup{ %hyperrefパッケージのオプション設定
setpagesize=false, %ページサイズが変わってしまうのを防ぐ
colorlinks=true, %リンクに色を付ける
urlcolor=blue, %外部参照のURLは青色にする（wordに近い）
linkcolor=black %内部参照は黒（＝地の文）と同じ
}
% \usepackage{pxjahyper}