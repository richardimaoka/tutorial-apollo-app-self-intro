#!/bin/sh

rm -f index.html
cp -r answers/client1 client
cd client
npm install
npm run start