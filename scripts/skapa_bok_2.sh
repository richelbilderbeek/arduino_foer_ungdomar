#!/bin/bash

# Concatenate all Markdown files first, convert those to one PDF

build_folder=build
#echo $build_folder

rm -rf build
mkdir build

if [ ! -d $build_folder ]; then 
  echo "Error: failed to create build folder"
  exit 1
fi

cp ../kapitel/foerord/*.* $build_folder                  ; mv $build_folder/README.md $build_folder/README_00.md
cp ../kapitel/05_blink_4/*.* $build_folder               ; mv $build_folder/README.md $build_folder/README_01.md
cp ../kapitel/06_uppladdningsknapp/*.* $build_folder     ; mv $build_folder/README.md $build_folder/README_02.md
cp ../kapitel/07_potmeter_och_joystick/*.* $build_folder ; mv $build_folder/README.md $build_folder/README_03.md
cp ../kapitel/08_ldr/*.* $build_folder                   ; mv $build_folder/README.md $build_folder/README_04.md

cp arduino_book_style.theme $build_folder

cd "${build_folder}" || exit 41

{ cat README_00.md ; echo " " ; echo "\pagebreak" ; echo " "; } >> README.md
{ cat README_01.md ; echo " " ; echo "\pagebreak" ; echo " "; } >> README.md
{ cat README_02.md ; echo " " ; echo "\pagebreak" ; echo " "; } >> README.md
{ cat README_03.md ; echo " " ; echo "\pagebreak" ; echo " "; } >> README.md
{ cat README_04.md ; echo " " ; echo "\pagebreak" ; echo " "; } >> README.md

# Table of Content
# Code has highlights following the tango color scheme
# Thinner margin of 0.5 inch
# Do not cut code blocks
pandoc README.md -o bok.pdf --toc --toc-depth=1 --highlight-style=arduino_book_style.theme -V geometry:margin=0.5in

cp bok.pdf ../../boecker/bok_2_utan_framsida.pdf

cd ../../boecker || exit 42
pdfunite framsida_2.pdf bok_2_utan_framsida.pdf bok_2.pdf

# Make booklet
bookletimposer -a bok_2.pdf -o haefte_2.pdf

# Cleanup
rm bok_2_utan_framsida.pdf

