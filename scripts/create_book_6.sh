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

cp ../kapitel/foerord/*.*                       $build_folder; mv $build_folder/README.md $build_folder/README_00.md
cp ../kapitel/16_maetning_av_en_ldr/*.*    $build_folder; mv $build_folder/README.md $build_folder/README_01.md
cp ../kapitel/17_anslutning_av_en_ldr/*.*  $build_folder; mv $build_folder/README.md $build_folder/README_02.md
cp ../kapitel/18_anvaendning_av_en_ldr/*.* $build_folder; mv $build_folder/README.md $build_folder/README_03.md

cp arduino_book_style.theme $build_folder

cd "${build_folder}" || exit 41

{ \
  cat README_00.md ; echo " " ; echo "\pagebreak" ; echo " "; \
  cat README_01.md ; echo " " ; echo "\pagebreak" ; echo " "; \
  cat README_02.md ; echo " " ; echo "\pagebreak" ; echo " "; \
  cat README_03.md ; echo " " ; echo "\pagebreak" ; echo " "; \
} >> README.md

# Table of Content
# Code has highlights following the tango color scheme
# Thinner margin of 0.5 inch
# Do not cut code blocks
pandoc README.md -o bok.pdf --toc --toc-depth=1 --highlight-style=arduino_book_style.theme -V geometry:margin=0.5in

cp bok.pdf ../../boecker/bok_6_utan_framsida.pdf

cd ../../boecker || exit 42
pdfunite framsida_6.pdf bok_6_utan_framsida.pdf bok_6.pdf

# Make booklet
bookletimposer -a bok_6.pdf -o haefte_6.pdf

# Cleanup
rm bok_6_utan_framsida.pdf

