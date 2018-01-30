#!/bin/bash

path=/var/www/vhosts/welfie.co

cp "$path/welfie-fe/dist/index.html" "$path/httpdocs"
cp -r "$path/welfie-fe/dist/static/" "$path/httpdocs"

mkdir -p "$path/httpdocs/static/assets/pure"
cp "$path/welfie-fe/src/assets/pure/pure-min.css" "$path/httpdocs/static/assets/pure"
cp "$path/welfie-fe/src/assets/pure/grids-responsive.css" "$path/httpdocs/static/assets/pure"
cp "$path/welfie-fe/src/assets/pure/offsets.css" "$path/httpdocs/static/assets/pure"

sed -i -e 's#src/assets#/static/assets#g' "$path/httpdocs/index.html"
