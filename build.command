#!/bin/zsh

dir=$(dirname "$0")

cd "$dir"

platypus --droppable --name 'TarXZ' --interface-type 'Droplet' --interpreter '/bin/zsh' --app-version '2.0' --bundle-identifier io.github.jack-jw.TarXZ --uniform-type-identifiers 'public.item|public.folder' --optimize-nib -y main.sh
