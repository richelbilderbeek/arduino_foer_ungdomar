#!/bin/bash
#
# Create the pages for https://github.com/uppsala-makerspace/umstutorial
#
# Usage:
#
#   ./scripts/create_pages_for_umstutorial.sh

if [[ "$PWD" =~ scripts$ ]]; then
    echo "FATAL ERROR."
    echo "Please run the script from the project root. "
    echo "Present working director: $PWD"
    echo " "
    echo "Tip: like this"
    echo " "
    echo "  ./scripts/create_pages_for_umstutorial.sh"
    echo " "
    exit 42
fi

# Rscript -e 'splimata::split_tabs(input_file_name = "docs/kurserna/README.md", output_file_prefix = "docs/kurserna/generated")'
cp docs/kapitel/00_installera_arduino_iden/README.md docs/kapitel/00_installera_arduino_iden/generated_sv.md
sed -i '/^---$/,/^---$/d' docs/kapitel/00_installera_arduino_iden/generated_sv.md
Rscript scripts/replace_rel_url_by_abs_url.R docs/kapitel/00_installera_arduino_iden/generated_sv.md https://richelbilderbeek.github.io/arduino_foer_ungdomar/kapitel/00_installera_arduino_iden/
sed -i 's/^# .*$/# Att installera Arduino IDEn/g' docs/kurserna/generated_sv.md

cp docs/kapitel/01_anvaendning_av_den_inbyggda_lysdioden/README.md docs/kapitel/01_anvaendning_av_den_inbyggda_lysdioden/generated_sv.md
sed -i '/^---$/,/^---$/d' docs/kapitel/01_anvaendning_av_den_inbyggda_lysdioden/generated_sv.md
Rscript scripts/replace_rel_url_by_abs_url.R docs/kapitel/01_anvaendning_av_den_inbyggda_lysdioden/generated_sv.md https://richelbilderbeek.github.io/arduino_foer_ungdomar/kapitel/01_anvaendning_av_den_inbyggda_lysdioden/
sed -i 's/^# .*$/# Din första Arduino program/g' docs/kapitel/01_anvaendning_av_den_inbyggda_lysdioden/generated_sv.md
