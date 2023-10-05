#!/bin/bash

cd /workdir/
TEXNAME=${1#/workdir/}

latexmk $TEXNAME