\ProvidesClass{/workdir/classes/summary}[2023/01/05 summary]

\LoadClass[twocolumn, 9pt, a4paper]{ltjsarticle}

\usepackage{silence}
\WarningFilter{caption}{Unknown document}

\usepackage{pesummary}
\usepackage[numbers]{natbib}
\usepackage{amsmath, mathtools}
% \usepackage{booktabs}
\usepackage{graphicx}
\usepackage{siunitx}
% \usepackage{caption}
% \usepackage[subrefformat=parens]{subcaption}
% \captionsetup{compatibility=false, labelsep=quad}
% \usepackage[unicode=true]{hyperref}
% \hypersetup{ % hyperrefパッケージのオプション設定
% setpagesize=false, % ページサイズが変わってしまうのを防ぐ
% colorlinks=true, % リンクに色を付ける
% urlcolor=black, % 外部参照は黒（＝地の文と同じ）
% linkcolor=black, % 内部参照は黒（＝地の文と同じ）
% citecolor=black % 文献参照は黒（＝地の文と同じ）
% }

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