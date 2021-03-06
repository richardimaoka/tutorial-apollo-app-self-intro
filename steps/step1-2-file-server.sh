#!/bin/sh

cd "$(dirname "$0")" || exit # REMOVE THIS IN aggregate.sh 
cd ../ || exit               # REMOVE THIS IN aggregate.sh - cd to the git repository root

# ### プロフィール画像をローカルのファイルサーバーから取得

# :large_orange_diamond: Action: 別のターミナルを立ち上げ、以下のコマンドを実行してください

# ```terminal: ファイルサーバー・ターミナル
cp -r answers/step1-file-server file-server
# shellcheck disable=SC2164 # REMOVE THIS IN aggregate.sh 
cd file-server
npm install
# ```

# :large_orange_diamond: Action: 以下のコマンドを実行してください

# ```terminal: ファイルサーバー・ターミナル
npm run start
# ```

# :white_check_mark: Result: http://localhost:8080/ でファイルサーバーが立ち上がります。

# ![2022-03-05_19h09_43.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/e9cde174-5eb0-79b7-c2b6-684d8ecac4a6.png)

