#!/bin/zsh

dir=$(dirname "$0")

cd "$dir"
echo "Compiling main.applescript"
osacompile -x -o "./TarXZ.app" "./main.applescript"
echo "Compiled to TarXZ.app"