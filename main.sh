#!/bin/zsh

source ~/.zshrc

if command -v xz >/dev/null 2>&1; then
    og_dir=$(pwd)

    for input in "$@"; do
        cd "$(dirname "$input")"
        name=$(basename "$input")
        final="$name.tar.xz"

        echo "Bundling and compressing $name"
        tar -c "$name" | xz -9e > "$final"

        echo "Done"
    done

    cd $og_dir
else
    osascript -e 'display alert "xz is not installed" message "Please install xz to use TarXZ."'
fi
