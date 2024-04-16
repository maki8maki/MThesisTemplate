#!/bin/bash

if [ ! -z "$GITHUB_ACTIONS" ]; then
    cp /workdir/.latexmkrc $HOME/
    mkdir /workdir/out
    mkdir /workdir/out/sections
fi

FILES=("$@")
for file in $FILES;do
    latexmk file
done
