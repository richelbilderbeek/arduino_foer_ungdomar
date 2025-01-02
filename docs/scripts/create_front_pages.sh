#!/bin/bash

# Concatenate all Markdown files first, convert those to one PDF

build_folder="build"

rm -rf "${build_folder}"
mkdir "${build_folder}"

if [ ! -d "${build_folder}" ]; then 
  echo "Error: failed to create build folder"
  exit 1
fi

cp ../kapitel/framsidor/*.* "${build_folder}"
cd $build_folder || exit 42

#pandoc framsida_1.md -o ../../boecker/framsida_1.pdf
#pandoc framsida_2.md -o ../../boecker/framsida_2.pdf
#pandoc framsida_3.md -o ../../boecker/framsida_3.pdf
#pandoc framsida_4.md -o ../../boecker/framsida_4.pdf
pandoc framsida_5.md -o ../../boecker/framsida_5.pdf
# pandoc framsida_99.md -o ../../boecker/framsida_99.pdf

#pandoc framsida_x1.md -o ../../boecker/framsida_x1.pdf
#pandoc framsida_x2.md -o ../../boecker/framsida_x2.pdf
#pandoc framsida_x3.md -o ../../boecker/framsida_x3.pdf
#pandoc framsida_x4.md -o ../../boecker/framsida_x4.pdf
#pandoc framsida_5.md -o ../../boecker/framsida_5.pdf


