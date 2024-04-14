\ProvidesClass{/workdir/classes/thesis}[2022/11/30 thesis]

\LoadClass[12pt]{ltjsbook}

\usepackage{silence}
\WarningFilter{caption}{Unknown document}

\usepackage{pethesis}
\usepackage{amsmath,amssymb,bm}
\usepackage{minitoc}
\usepackage{booktabs}
\usepackage{graphicx}
%\usepackage[draft]{graphicx} %画像を表示せず枠だけ確保しコンパイル時間減らす
\usepackage{ascmac} % 枠の中に文章を記述する
\usepackage{url}
\usepackage{siunitx} % 単位を簡単に記述できる
\usepackage{caption}
\usepackage[subrefformat=parens]{subcaption} %橘高追加
\captionsetup{compatibility=false, labelsep=quad} %橘高追加 %コロンがcaptionに入ってたので，labelsep=quadを追加(藤野)
\usepackage{optidef} % 最適化問題を簡単に書ける
\usepackage[usenames]{color} %文字を色付けできる
\usepackage{csvsimple-l3} % csvファイルから表を作成する
\usepackage{midpage} % 図表をページ中央に配置する
\usepackage[numbers]{natbib} % \citeにハイパーリンクをつけるためのおまじない
\usepackage{multibib} % 参考文献をわけて表示する
\newcites{ja}{a} % 第2引数は使用しないので適当
\newcites{en}{b} % 第2引数は使用しないので適当
\usepackage{subfiles} % 分割コンパイルを可能にする
\usepackage[unicode=true]{hyperref} % ハイパーリンクの作成
\urlstyle{same} % 地の文とurlのフォントを同じにする
\hypersetup{ % hyperrefパッケージのオプション設定
setpagesize=false, % ページサイズが変わってしまうのを防ぐ
colorlinks=true, % リンクに色を付ける
urlcolor=black, % 外部参照は黒（＝地の文と同じ）
linkcolor=black, % 内部参照は黒（＝地の文と同じ）
citecolor=black % 文献参照は黒（＝地の文と同じ）
}

% フォントの設定
\usepackage[haranoaji,deluxe,scale=1]{luatexja-preset}
\setmainfont[BoldFont=TeXGyreTermes-Bold,ItalicFont=TeXGyreTermes-Italic,Ligatures=TeX]{TeXGyreTermes}
\setsansfont[BoldFont=TeXGyreHeros-Bold,ItalicFont=TeXGyreHeros-Italic,Ligatures=TeX]{TeXGyreHeros}
\usepackage[warnings-off={mathtools-colon,mathtools-overbracket}]{unicode-math}
\setmathfont{TeX Gyre Termes Math}

\newcommand{\reffig}[1]{図\ref{#1}}
\newcommand{\refsubfig}[1]{\subref{#1}}
\newcommand{\reftab}[1]{表\ref{#1}}
\newcommand{\refeqn}[1]{式\eqref{#1}}
\newcommand{\refcp}[1]{第\ref{#1}章}
\newcommand{\refsec}[1]{\ref{#1}節}
\newcommand{\refsubsec}[1]{\ref{#1}項}

% 表と図を並べるために，Figure環境中でTable環境の見出しを表示できようにする
\makeatletter
\newcommand{\figcaption}[1]{\def\@captype{figure}\caption{#1}}
\newcommand{\tblcaption}[1]{\def\@captype{table}\caption{#1}}
\makeatother

\newcommand{\red}[1]{\textcolor{red}{#1}} % colorパッケージと合わせてコメントアウトを外す

\newcommand{\argmax}{\mathop{\textrm{arg~max}}\limits}   % ★★★ 田中追加 ★★★
\newcommand{\argmin}{\mathop{\textrm{arg~min}}\limits}  % ★★★ 田中追加 ★★★

% 3桁区切りでコンマを入れる **小数点以下にも入るので注意**
\newcommand{\SIcomma}[2]{\SI[group-minimum-digits = 3, group-separator = {,}]{#1}{#2}}
\newcommand{\numcomma}[1]{\num[group-minimum-digits = 3, group-separator = {,}]{#1}}

% 元のテンプレートにはあったが，使用しないパッケージ等を以下に置く
% \usepackage{subfigure}
% \usepackage{hhline} % 表中の線をカスタムできる
% \usepackage{slashbox} % 表に斜線を入れられる
% \usepackage{colortbl} % 表を色付けできる
% \usepackage{lscape} % 図や表などを回転できる
% \usepackage{pdfpages} % PDFを挿入できる
% \usepackage{threeparttable} % ★★★ 田中追加 ★★★, 表に脚注をつけられる
% \usepackage{CJKutf8} % 英語文書の一部のみを日本語にするときに利用
% \usepackage{otf} %橘高追加, Open Typeフォントを使える
% \renewcommand{\refname}{}
% \renewcommand{\figurename}{図 }   % ★★★ 田中追加（図→Fig. に変更） ★★★
% \renewcommand{\tablename}{Table }   % ★★★ 田中追加（表→Table に変更） ★★★
% \newcommand\whline{
%   \noalign{\xdef\origarrayrulewidth{\the\arrayrulewidth}%
%   \global\arrayrulewidth 3\arrayrulewidth}
%   \hline
%   \noalign{\global\arrayrulewidth\origarrayrulewidth}%
%   }
% \newcommand\dis{
%   \displaystyle
% }