#!/bin/bash

path=/var/www/vhosts/welfie.co
cp "$path/welfie-fe/dist/index.html" "$path/httpdocs"
cp -r "$path/welfie-fe/dist/static/" "$path/httpdocs"
