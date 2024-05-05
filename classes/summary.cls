\ProvidesClass{/workdir/classes/summary}[2023/01/05 summary]

\LoadClass[
  twocolumn,
  column_gap=3zw,
  article,
  paper=a4,
  fontsize=8.5pt,
  baselineskip=1.2zh, % 見た目で合うように微調整した結果
  disablejfam,
  head_space=22truemm,
  foot_space=22truemm,
  gutter=19truemm,
  fore-edge=19truemm
]{jlreq}

\usepackage{silence}
\WarningFilter{caption}{Unknown document}

\usepackage{pesummary}
\usepackage[numbers]{natbib}
\renewcommand{\bibnumfmt}[1]{[#1]\hspace{0.5em}} % 番号の後に少し空白を入れる
\usepackage{amsmath, mathtools}
\usepackage{booktabs}
\usepackage{graphicx}
\usepackage{siunitx}
\sisetup{detect-all} % その場のフォントに合わせる
\usepackage{caption}
% \usepackage[subrefformat=parens]{subcaption}
\captionsetup{compatibility=false, labelsep=quad}
% \usepackage[unicode=true]{hyperref}
% \hypersetup{ % hyperrefパッケージのオプション設定
% setpagesize=false, % ページサイズが変わってしまうのを防ぐ
% colorlinks=true, % リンクに色を付ける
% urlcolor=black, % 外部参照は黒（＝地の文と同じ）
% linkcolor=black, % 内部参照は黒（＝地の文と同じ）
% citecolor=black % 文献参照は黒（＝地の文と同じ）
% }

% section, subsectionの設定
\RenewBlockHeading{section}{1}{%
  font={\normalfont},
  label_format={\thesection.},
  format={\jlreqHeadingLabel{#1}\ \hspace{-1\zw}\jlreqHeadingText{#2}},
  lines=1,
  before_lines=1,
  align=left
}
\RenewBlockHeading{subsection}{2}{%
  font={\normalfont},
  label_format={\thesubsection},
  format={\jlreqHeadingLabel{#1}\ \hspace{-1\zw}\jlreqHeadingText{#2}},
  lines=1,
  before_lines=1,
  align=left
}
\RenewBlockHeading{bibsection}{1}{%
  font={\normalfont},
  format={\jlreqHeadingText{#2}},
  lines=1,
  before_lines=1,
  align=left
}

\SetBlockHeadingSpaces{
  {_section{before_lines=1},_subsection{lines=1}}
}

% フォントの設定
\usepackage[haranoaji,deluxe,scale=1]{luatexja-preset}
\setmainfont[BoldFont=TeXGyreTermes-Bold,ItalicFont=TeXGyreTermes-Italic,Ligatures=TeX]{TeXGyreTermes}
\setsansfont[BoldFont=TeXGyreHeros-Bold,ItalicFont=TeXGyreHeros-Italic,Ligatures=TeX]{TeXGyreHeros}
\usepackage[warnings-off={mathtools-colon,mathtools-overbracket}]{unicode-math}
\setmathfont{TeX Gyre Termes Math}

\newcommand{\reffig}[1]{図\ref{#1}}
% \newcommand{\refsubfig}[1]{\subref{#1}}
\newcommand{\reftab}[1]{表\ref{#1}}
\newcommand{\refeqn}[1]{式\eqref{#1}}