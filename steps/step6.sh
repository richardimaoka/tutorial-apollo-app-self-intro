#!/bin/sh

# ## GraphQLサーバーでProfileオブジェクトを返す

# :large_orange_diamond: Action: 先程のApollo Studio Explorerの画面から"Query your server"ボタンを押してください

# :white_check_mark: Result: 以下のような画面に遷移します。

# ![2022-03-06_09h04_06.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/e32d47ea-e138-8beb-acec-1441174f7e11.png)

# :large_orange_diamond: Action: 以下のコマンドを実行してください

# ```terminal: メイン (ターミナル)
cp answers/server2/* server
# ```

# <details><summary>ソースコードの解説</summary>

# <div>

# 上記コマンドによって `data.json` が配置され、

# ```json:data.json
# {
#   "me": {
#     "imgSrc": "http://localhost:8080/images/profile.png",
#     "name": "エメラルド 君沢",
#     "jobTitle": "データベース エンジニア",
#     "residence": "東京都 南アザラシ区 ペンギン町",
#     "description": " データベース エンジニアのエメラルド 君沢です。金融関連の会社の社内IT部門にて9年勤めたあと、3年ほどベンチャー企業を転々とし、いまは広告関連の会社でエンジニアをやっています。"
#   }
# }
# ```

# これが下記のGraphQLスキーマに対応しています。

# ```graphql:schema.gql
# type Query {
#   me: Profile
# }

# type Profile {
#   imgSrc: String
#   name: String
#   residence: String
#   jobTitle: String
#   description: String
# }
# ```

# `index.ts` の中で `data.json` を読み込んで、GraphQLサーバーからのレスポンスとしてそのまま利用しています。

# ```ts:index.ts
# const jsonDataFile = __dirname.concat("/data.json");
# ```

# ---

# </div></details>

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

# :white_check_mark: Result: 以下のように表示されればOKです。

# ![2022-03-06_21h11_55.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/4e21aea3-c7a7-321e-2c85-dd8fdc39d024.png)

