#!/bin/sh

# ## React環境のセットアップ
cp -r answers/client1 client
cd client
npm install

rm -f index.html

npm run start