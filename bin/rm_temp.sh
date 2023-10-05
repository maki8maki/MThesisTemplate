#!/bin/bash

# out, sections/outフォルダ内のPDFファイル以外（中間ファイルなど）を消去する
cd /workdir/out && ls | grep -v -E ".pdf$" | xargs rm -r
cd /workdir/sections/out && ls | grep -v -E ".pdf$" | xargs rm -r