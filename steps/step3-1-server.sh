#!/bin/sh

# ## 3. GraphQLサーバー立ち上げ

# :large_orange_diamond: Action: 新たなターミナルで、以下のコマンドを実行してください

# ```terminal: GraphQLサーバー・ターミナル
cp -r answers/step3-server1 server
# shellcheck disable=SC2164 # REMOVE THIS IN aggregate.sh 
cd server
npm install
# ```

# :large_orange_diamond: Action: 以下のコマンドを実行してください

# ```terminal: GraphQLサーバー・ターミナル
npm run start
# ```

# :large_orange_diamond: Action: ブラウザで http://localhost:4000/ を開いてください

# :white_check_mark: Result: 以下のようなApollo Studio Explorerの画面が表示されます。

# ![image.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/58dd6755-b37b-9f64-3047-a1a2e8e7b0b9.png)

# :large_orange_diamond: Action: "Query your server"ボタンを押してください

# :white_check_mark: Result: 以下のような画面に遷移します。

# ![2022-03-06_09h04_06.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/e32d47ea-e138-8beb-acec-1441174f7e11.png)

# :large_orange_diamond: Action: 以下のクエリをApollo Studio Explorerの画面に貼り付けて、"Run"ボタンを押してください

# ```
# {
#   me {
#     name
#     residence
#     imgSrc
#     jobTitle
#     description
#   }
# }
# ```

# :white_check_mark: Result: Stringのmock値である"Hello World"で埋められたレスポンスが得られます。

# ![2022-03-12_00h45_02.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/1f54b20b-5c40-9894-cc12-9ea2cbe11a38.png)

# ここから先は、mock値ではなくResolverを使ってGraphQLサーバーからのレスポンスを返します。
