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

cp ../kapitel/framsidor/*.* $build_folder
cd $build_folder

# pandoc framsida_1.md -o ../../boecker/framsida_1.pdf
pandoc framsida_2.md -o ../../boecker/framsida_2.pdf


