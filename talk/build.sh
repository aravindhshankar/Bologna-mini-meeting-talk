#!/bin/bash
# Build the talk and open the PDF.   ./build.sh
# Live preview, rebuilds on save:    ./build.sh -w   (Ctrl-C to stop)
cd "$(dirname "$0")" || exit 1
if [ "$1" = "-w" ]; then
  exec latexmk -pdf -pvc -interaction=nonstopmode talk.tex
fi
latexmk -pdf -interaction=nonstopmode -halt-on-error talk.tex || {
  echo "BUILD FAILED: see talk.log (search for lines starting with '!')"; exit 1; }
latexmk -c >/dev/null 2>&1; rm -f talk.nav talk.snm
open talk.pdf
