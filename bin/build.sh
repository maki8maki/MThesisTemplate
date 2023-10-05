#!/bin/bash

if [ ! -z "$GITHUB_ACTIONS" ]; then
    cp /workdir/.devcontainer/.latexmkrc $HOME/
    mkdir /workdir/out
    mkdir /workdir/out/sections
fi

latexmk main.tex