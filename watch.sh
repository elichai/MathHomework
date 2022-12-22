#!/usr/bin/env bash
set -ex
DIR="$(dirname "$1")" || exit 1
FILE="$(basename "$1")" || exit 1
pushd "$DIR" || exit 1
latexmk -C
latexmk -interaction=nonstopmode -pvc -pdf -xelatex "$FILE"
