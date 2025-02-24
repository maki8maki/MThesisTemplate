# 人間環境学専攻修士論文テンプレート<!-- omit in toc -->

* 個人PCにLaTeXの環境構築することなく人間環境学専攻修士論文をコンパイルする
  * 精密工学科卒業論文以外にも利用可能
* [このリポジトリ](https://github.com/being24/latex-template-ja)（以下参考リポジトリ）を参考に作成した
  * [このページ](https://zenn.dev/being/articles/how-to-use-my-latex)（や[このページ](https://poyo.hatenablog.jp/entry/2020/12/05/110000)）に参考リポジトリの説明がなされている

**注意**
* テンプレート作成者（以下作成者）が論文執筆に使用した範囲以外で問題が発生する可能性がある
* 修論本文のスタイルは自由であるため、大部分は精密工学科のテンプレートを使用している
* 修論の表紙や要旨は作成者が新たに作ったものなので，事務室が出しているWordテンプレートと必ずしも一致しない
* 英語系のフォントはTeX Gyre Termesを、日本語系のフォントはHarano Ajiを使用
* docker + vscodeでコンパイルすることに特化しているため，overleaf等にそのまま持ち込んでもコンパイルできない

## 目次<!-- omit in toc -->
- [環境](#環境)
  - [必要なソフトウェア](#必要なソフトウェア)
- [使い方](#使い方)
  - [コンパイル](#コンパイル)
  - [フォーマット](#フォーマット)
  - [diff表示](#diff表示)
  - [文章の校正](#文章の校正)
  - [PDFとコードの保存](#pdfとコードの保存)
- [Tips](#tips)
  - [ファイル分割](#ファイル分割)
  - [参考文献](#参考文献)
  - [Docker](#docker)
- [ファイル構成](#ファイル構成)


## 環境

* 作成者はmacOS 13.2.1で論文執筆を行った
  * 以下のショートカットなどもこの環境に準拠
* また，Windows 10でもコンパイルが行えることを確認した
* 参考リポジトリでは以下の環境が提示されている
  * Windows 10 or later
  * macOS 10.14 or later
  * Ubuntu 18.04 LTS or later

### 必要なソフトウェア
* [vscode](https://code.visualstudio.com/)
  * LaTeX Workshop，Dev Containersという拡張機能が必須
  * Git Graphと合わせて推奨拡張機能に追加している
    * このテンプレートをvscodeで開き，左側の拡張機能タブで`@recommended`と検索すると上記3つの拡張機能が表示される
* [docker](https://www.docker.com)
  * windowsの場合はsudoコマンド無しでdockerを使用できるようにする必要がある（らしい）
* [git](https://git-scm.com)
  * githubアカウントの作成，gitの初期設定を行う

## 使い方

1. このテンプレートを任意の場所に配置し，git管理・リモートリポジトリ作成を行う
2. dockerを起動
3. vscodeでテンプレートフォルダを開く
4. dev containerを使用するか尋ねるポップアップが右下に出るので指示に従って進める
   * vscodeウィンドウの左下の>と<が重なったマークをクリック→「Reopen in Container」からも同様に進められる
1. 作業ディレクトリ直下に`out/sections`フォルダを作成する（コンパイルを通すため）

* 以降は全て上記の5番まで終わった状態からの操作方法

### コンパイル
* コンパイルしたいTEXファイルを開き，ファイルの右上の緑の再生マークや左側のTEXタブ->Build LaTeX project（->Recipe: compile）をクリックする
   * 分割ファイル（sections以下のファイル）を開いているときは，再生ボタンのクリックの後にmain.texと分割ファイルのどちらをコンパイルするか尋ねるポップアップが上側に表示されるので，選択する
  * main.texのPDFは`out`以下，分割ファイルのPDFは`sections/out`以下に作られる
* ファイルを開いた状態でcmd + option + v（windowsはctrl + alt + v）で右側にPDFが表示される
  * コンパイルのときと同様に，分割ファイルの場合はmain.texと分割ファイルのどちらのPDFを表示するか尋ねるポップアップが表示される
  * `.vscode/settings.json`に`"latex-workshop.latex.rootFile.doNotPrompt": true,`を追加するとコンパイルやPDFの表示で分割ファイルが自動で選ばれる
  * 参照が不完全なとき（他ファイルを参照していて??と表示されているとき）は文字数が変わるので全体のコンパイルをしたときは図の配置が変わる可能性があるので注意する
* PDF上でダブルクリックするとTEXファイルの該当箇所にジャンプでき，TEXファイル上でcmd + option + j（windowsはctrl + alt + j）するとPDFの該当箇所にジャンプできる（synctexという機能）
  * 分割ファイルなど参照が不完全なときなどはずれた場所にジャンプすることもある

### フォーマット

* TEXファイルを開き，右クリック->ドキュメントのフォーマット（option + shift + f）で全TEXファイルがフォーマットされる

### diff表示

1. 左側のTEXタブ->Build LaTeX project->Recipe: create_diffをクリックする
2. TEXファイル名-diffHEAD.texが作成されるので，このファイルをコンパイルすると前コミットとの差分が強調されたPDFが作成される

**注意**
* テンプレートファイルのように2重に分割ファイルをinputやincludeしているとうまくdiff表示できない
* 作成者は論文執筆でこの機能を利用していないため，他にも問題が存在する可能性が高い

### 文章の校正

* 普段はdevブランチ等で文章を書き，masterブランチにPull Requestを出すと文章がおかしいところなどを指摘してくれる
  * → ローカルでも校正してくれるように変更

* .texlintrcに文章校正の設定が書かれている
  * [ここ](https://github.com/textlint-ja/textlint-rule-preset-ja-technical-writing)を参考にすると良い
  * `% textlint-disable`と`% textlint-disable`で囲んだ部分は校正が適用されないので，どうしても許容してほしい場所があれば利用する
    * この場合は全てのルールが適用されなくなるので注意する
    * `% textlint-disable`や`% textlint-disable`の後に`ja-technical-writing/ja-no-mixed-period`などのルール名を続けると該当するルールのみ適用されなくなるため，こちらの使用を推奨する

* prh.ymlファイルを編集し，表記ゆれ（サーバとサーバーなど）の検知を自分で設定できる

**注意**
* 過信は禁物
* 作成者は論文執筆でこの機能を利用しておらず，検証もしていないため，他にも問題が存在する可能性が高く，詳しい利用法も把握していない

### PDFとコードの保存

* vから始まるタグをつけてpushしたときにmain.pdfとソースコードの圧縮ファイルがrelaseの形でgithub上に保存される
  * 1/nモデルの提出時などに保存すると良い

**注意**
* `HTTP 403: Resource not accessible by integration`のエラーが出たとき
  * [このページ](https://zenn.dev/tatsugon/articles/github-actions-permission-error)を参考にレポジトリの設定を変更する

## Tips

### ファイル分割

* 分割ファイルはsections以下に置き，ドキュメントクラスを`\documentclass[../main]{subfiles}`とする
* 挿入したい場所で`subfile{path/to/subfile}`または`subfileinclude{path/to/subfile}`とする
  * 前者は改ページなし，後者は改ページあり

### 参考文献

* Zoteroのbibtex出力を前提としています
  * Zoteroを用いた文献管理について[ここ](https://zenn.dev/kinakomochi5250/articles/literature-zotero)で紹介している
* ウェブページの場合はエントリータイプを`web_page`とすると，作者・タイトル・URL・最終閲覧日が表示される
  * `sections/reference_web.bib`を参照
* プレプリントの場合はエントリータイプを`preprint`とすると，作者・タイトル等が表示される
   * `sections/reference.bib`を参照
* 日本語文献の場合はyomiフィールドを追加しないと正しくソートされない
  * 書き方は`yomi = {せい, めい}`
* caption内の引用でエラーが出る場合は`\protect{}`で囲むと良い（とりあえず囲んでも問題はないと思われる）

**注意**
* タイトルやジャーナル名などに特殊文字（&など）は入っている場合は，前に`\`を入れる
* 作成者の論文に含まれるarticle，book，inproceeding，incollection以外では不具合が出る可能性がある

### Docker

* テンプレートで使われているものと異なるイメージを使いたい場合（folkして自分で編集したものなど）は，各ファイルで`ghcr.io/being24/latex-docker`となっているところを変更する

## ファイル構成

* .vscode/
  * gthesis.code-snippets
    * スニペット（ショートカットのようなもの）を追加できる
  * setting.json
    * vscodeの設定が書かれている
    * 自分で設定を追加したい場合はここを編集する
      * 例えば，ファイルの保存時に自動でコンパイルを始めたい場合は`"latex-workshop.latex.autoBuild.run": "never"`の`"never"`を`"onSave"`に変更する
* backups/
  * フォーマットをかける際にバックアップファイルが保存される
  * 事前にディレクトリが存在しないと保存できない
* bin/
  * シェルファイルを格納したディレクトリ
  * build.sh
    * github上にmain.pdfとsummary.pdfを保存するためのコンパイルに利用する
  * compile.sh
    * 通常のコンパイルに利用する
  * diff.sh
    * diff表示に利用する
  * rm_temp.sh
    * `out`，`sections/out`以下のPDF以外のファイルを消去する
    * ターミナルから実行する
* classes/
  * クラスファイルやスタイルファイルを格納したディレクトリ
  * 人間環境学専攻修論以外の自作ファイルや学会テンプレートのスタイルファイルもここに置いて利用すると良い
  * style/
    * styファイルやbstファイルを格納したディレクトリ
    * jecon.bst
      * pesummary.bst，pethesis.bstを作成するために利用
      * 表示形式のカスタマイズが容易である
      * https://github.com/ShiroTakeda/jecon-bst
    * summary.bst, .sty
      * 修論要旨に利用
    * thesis.bst, .sty
      * 修論本文に利用
  * report.cls, resume.cls
    * 参考リポジトリにあったクラスファイル
  * sumamry.cls, thesis.cls
    * それぞれ修論要旨，本文に利用
* figures/
  * 図や写真を格納したディレクトリ
  * 章ごとにわけて配置している
* sections/
  * 分割ファイルを格納したディレクトリ
* .texlintrc
  * 文章校正の設定が書かれている
  * [ここ](https://github.com/textlint-ja/textlint-rule-preset-ja-technical-writing)を参考にすると良い
* prh.yml
  * 表記ゆれ等の設定が書かれている
