#!/bin/bash
#
# Converts all .jpg files in the folder to 50%
#
# Usage:
#
#   ./resize_jpgs_to_smaller.sh
#
#
for file_name in $(ls *.jpg)
do
  base_file_name=$(echo "${file_name%.*}")
  extension=${file_name#*.}
  output_file_name="${base_file_name}_50.${extension}"
  echo "${file_name} -> ${output_file_name}"
  convert -resize 50% ${file_name} ${output_file_name}
done
