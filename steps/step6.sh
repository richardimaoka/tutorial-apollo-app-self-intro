#!/bin/sh

# ## GraphQLサーバー

cp -r answers/server1 server
cd server

npm install

npm run start