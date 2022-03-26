#!/bin/sh

# ### GraphQLサーバーでProfileオブジェクトを返す

# :large_orange_diamond: Action: 以下のコマンドを実行してください

# ```terminal: メイン・ターミナル
cp answers/step3-server2/* server
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

# :large_orange_diamond: Action: 再び先程のクエリをApollo Studio Explorerの画面から実行してください。

# :white_check_mark: Result: 以下のように表示されればOKです。

# ![2022-03-12_00h48_17.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/5557c9eb-cde6-6d3b-a53b-621306cbdcb2.png)
