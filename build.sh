#!/bin/bash
rm -rf build
mkdir build

rm -rf dist
mkdir dist

declare -a englishes=("uk" "us")
declare -a germans=("at" "de")

for e in "${englishes[@]}"; do
    for g in "${germans[@]}"; do
        mkdir build/$e-$g
        cp denglish-$e.keylayout build/$e-$g/Denglish.keylayout
        cp icons/icns/icon-$e-$g.icns build/$e-$g/Denglish.icns
        cp -R installer/Install\ Denglish\ Keyboard\ Layout.app build/$e-$g/
    done
done

hdiutil create dist/denglish.dmg -format UDRO -volname "Denglish" -srcfolder ./build

rm -rf build
