#!/bin/zsh

sourceDir=$(dirname "$0")
buildDir=$(dirname ./*.app/Contents/Resources/Scripts/main.scpt)

cd "$sourceDir"
echo "Compiling $sourceDir/main.applescript"
osacompile -x -o "$buildDir/main.scpt" "$sourceDir/main.applescript"
echo "Compiled to $buildDir/main.scpt"