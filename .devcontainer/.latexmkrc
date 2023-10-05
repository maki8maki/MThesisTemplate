#!/usr/bin/env perl

$latex = 'uplatex  -synctex=1 -halt-on-error --shell-escape %O %S';
$latex_silent = 'uplatex  -synctex=1 -halt-on-error -interaction=batchmode';
$bibtex = 'upbibtex %O %S';
$dvipdf = 'dvipdfmx %O -o %D %S';
$makeindex = 'mendex %O -o %D %S';
$biber = 'biber --bblencoding=utf8 -u -U --output_safechars %O %S';
$aux_dir = "out/";
$out_dir = "out/";
$pdf_mode = 3;
$max_repeat = 5;
$do_cd = 1;

$ENV{'TEXINPUTS'}='/workdir/classes/style//:' . $ENV{'TEXINPUTS'};
$ENV{'BSTINPUTS'}='/workdir/classes/style//:' . $ENV{'BSTINPUTS'};