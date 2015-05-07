#!/bin/bash
set -e

rm -rf build
mkdir build

declare -a englishes=("uk" "us")
declare -a germans=("at" "de")

for e in "${englishes[@]}"; do
    for g in "${germans[@]}"; do
        DIR=build/$e-$g
        mkdir $DIR
        cp denglish-$e.keylayout $DIR/Denglish.keylayout
        cp icons/icns/icon-$e-$g.icns $DIR/Denglish.icns
        cp -a shortcuts/Keyboard\ Layouts $DIR/

        # Add folder image
        cp icons/png/icon-$e-$g-32.png build/tmpicon.png
        sips -i build/tmpicon.png
        DeRez -only icns build/tmpicon.png > build/tmpicns.rsrc
        Rez -append build/tmpicns.rsrc -o $DIR$'/Icon\r'
        SetFile -a C $DIR
        SetFile -a V $DIR$'/Icon\r'
        rm build/tmpicon.png
        rm build/tmpicns.rsrc
    done
done

# Create image
rm -rf dist
mkdir dist
hdiutil create dist/denglish.dmg -format UDRO -volname "Denglish" -srcfolder ./build
