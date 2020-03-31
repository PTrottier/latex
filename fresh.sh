#!/bin/sh
# Compile LaTeX on save
while find . -name '*.tex' | xargs inotifywait -qqre modify .; do
    latexmk -pdf
done