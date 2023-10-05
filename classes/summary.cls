\ProvidesClass{/workdir/classes/summary}[2023/01/05 summary]

\LoadClass[dvipdfmx, uplatex, twocolumn, 9pt]{jsarticle}

\usepackage{silence}
\WarningFilter{caption}{Unknown document}

\usepackage{pesummary}
\usepackage[numbers]{natbib}
\usepackage{amsmath, mathtools}
% \usepackage{booktabs}
\usepackage[dvipdfmx]{graphicx}
\usepackage{siunitx}
% \usepackage{caption}
% \usepackage[subrefformat=parens]{subcaption}
% \captionsetup{compatibility=false, labelsep=quad}
% \usepackage[dvipdfmx]{hyperref}
% \hypersetup{ % hyperrefパッケージのオプション設定
% setpagesize=false, % ページサイズが変わってしまうのを防ぐ
% colorlinks=true, % リンクに色を付ける
% urlcolor=black, % 外部参照のURLは青（wordに近い）
% linkcolor=black, % 内部参照は黒（＝地の文と同じ）
% citecolor=black % 文献参照は黒（＝地の文と同じ）
% }
% \usepackage{pxjahyper}

\newcommand{\reffig}[1]{図\ref{#1}}
% \newcommand{\refsubfig}[1]{\subref{#1}}
\newcommand{\reftab}[1]{表\ref{#1}}
\newcommand{\refeqn}[1]{式\eqref{#1}}