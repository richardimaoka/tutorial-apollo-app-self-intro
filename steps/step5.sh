#!/bin/sh

# ## GraphQLサーバー立ち上げ

# :large_orange_diamond: Action: 新たなターミナルで、以下の一連のコマンドを実行してください

# ```terminal: GraphQLサーバー (ターミナル)
cp -r answers/server1 server
cd server
npm install
# ```

# :large_orange_diamond: Action: 以下のコマンドを実行してください

# ```terminal: GraphQLサーバー (ターミナル)
npm run start
# ```

# :large_orange_diamond: Action: ブラウザで http://localhost:4000/ を開いてください

# :white_check_mark: Result: 以下のようなApollo Studio Explorerの画面が表示されます。

# ![image.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/58dd6755-b37b-9f64-3047-a1a2e8e7b0b9.png)