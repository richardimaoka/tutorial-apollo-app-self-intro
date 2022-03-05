#!/bin/sh

rm -f index.html
cp -r answers/client client
cd client
npm install
npm run start