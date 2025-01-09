#!/bin/bash
#
# Remove all '\pagebreak',
# so that they do not show up on the MkDocs website
#
# Usage:
#
#   ./scripts/remove_all_pagebreaks.sh

if [[ "$PWD" =~ scripts$ ]]; then
    echo "FATAL ERROR."
    echo "Please run the script from the project root. "
    echo "Present working director: $PWD"
    echo " "
    echo "Tip: like this"
    echo " "
    echo "  ./scripts/remove_all_pagebreaks.sh"
    echo " "
    exit 42
fi


# find . -name "*.md" -type f -print0 | xargs sed -i -e '/\pagebreak/d'

for filename in $(find . -name "*.md" -type f -print0)
do
  echo "Modifying file: ${filename}"
  sed -i '/\pagebreak/d' "${filename}"
done

git status

