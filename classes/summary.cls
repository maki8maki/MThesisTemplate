\ProvidesClass{/workdir/classes/summary}[2023/01/05 summary]

\LoadClass[
  twocolumn,
  column_gap=8truemm,
  article,
  paper=a4,
  fontsize=9pt,
  baselineskip=12.7pt,
  disablejfam,
  head_space=20truemm,
  foot_space=20truemm,
  gutter=20truemm,
  fore-edge=20truemm
]{jlreq}

\usepackage{silence}
\WarningFilter{caption}{Unknown document}

\usepackage{summary}
\usepackage[sort&compress]{natbib}
\setcitestyle{numbers,super,open={},close={)},comma}
\renewcommand{\bibnumfmt}[1]{#1)\hspace{\zw}} % 番号の後に少し空白を入れる
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

% ページスタイル
\usepackage{fancyhdr}
\usepackage{lastpage}
\fancypagestyle{mypagestyle}{%
  \lhead{}
  \rhead{\thepage/\pageref{LastPage}}
  \cfoot{}
  \renewcommand{\headrulewidth}{0.0pt}
}

% section, subsectionの設定
\RenewBlockHeading{section}{1}{%
  font={\gtfamily\large},
  label_format={\thesection},
  format={\jlreqHeadingLabel{#1}\ \hspace{-0.7\zw}\jlreqHeadingText{#2}},
  lines=1,
  before_lines=0.5,
  after_lines=0.5,
  align=center
}
\RenewBlockHeading{subsection}{2}{%
  font={\gtfamily},
  label_format={\thesubsection},
  format={\jlreqHeadingLabel{#1}\ \hspace{-0.7\zw}\jlreqHeadingText{#2}},
  lines=1,
  before_lines=0.2,
  after_lines=0.2,
  align=left
}
\RenewBlockHeading{subsubsection}{3}{%
  font={\gtfamily},
  label_format={\thesubsubsection},
  format={\jlreqHeadingLabel{#1}\ \hspace{-0.7\zw}\jlreqHeadingText{#2}},
  lines=1,
  before_lines=0.2,
  after_lines=0.2,
  align=left
}
\RenewBlockHeading{bibsection}{1}{%
  font={\gtfamily},
  format={\jlreqHeadingText{#2}},
  lines=1,
  before_lines=0.5,
  after_lines=0.2,
  align=left
}

% フォントの設定
\usepackage[haranoaji,deluxe,scale=1]{luatexja-preset}
\setmainfont[BoldFont=TeXGyreTermes-Bold,ItalicFont=TeXGyreTermes-Italic,Ligatures=TeX]{TeXGyreTermes}
\setsansfont[BoldFont=TeXGyreHeros-Bold,ItalicFont=TeXGyreHeros-Italic,Ligatures=TeX]{TeXGyreHeros}
\usepackage[warnings-off={mathtools-colon,mathtools-overbracket}]{unicode-math}
\setmathfont{TeX Gyre Termes Math}

\renewcommand{\figurename}{Fig.\ }
\renewcommand{\tablename}{Table\ }

\newcommand{\reffig}[1]{図\ref{#1}}
\newcommand{\refsubfig}[1]{\subref{#1}}
\newcommand{\reftab}[1]{表\ref{#1}}
\newcommand{\refeqn}[1]{式\eqref{#1}}
\newcommand{\refsec}[1]{\ref{#1}節}
\newcommand{\refsubsec}[1]{\ref{#1}項}
