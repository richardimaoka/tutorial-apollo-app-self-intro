#!/bin/sh

cd "$(dirname "$0")" || exit
cd ../

rm -f index.html
rm -f profile.png
rm -rf file-server
rm -rf client
rm -rf server

