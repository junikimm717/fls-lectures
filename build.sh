#!/bin/sh

set -eu

DIR="$(realpath "$(dirname "$0" )" )"

cd "$DIR"

mkdir -p "$DIR/dist"

cp "$DIR/index.html" "$DIR/dist/"

pandoc -o "$DIR/dist/syllabus.pdf" "$DIR/syllabus.md"

for i in $(seq 1 5); do (
  echo "============================"
  echo "compiling lecture $i..."
  cd "lecture$i"
  make clean
  latexmk -pdf
  for file in *.pdf; do
    newfile="${file%.pdf}${i}.pdf"
    mv "$file" "$DIR/dist/$newfile"
  done
) done
