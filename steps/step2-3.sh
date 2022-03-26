#!/bin/sh

# ### Reactのみでサンプル完成時の見た目を構築

# 次にクライアントサイドのReactのみで、GraphQLサーバーサイドを準備せず、サンプル完成時の見た目を構築しましょう。

# :large_orange_diamond: Action: 以下のコマンドを実行してください

# ```terminal: メイン・ターミナル
cp -r answers/step2-client2/src client
rm -f client/src/App.tsx
# ```

# :large_orange_diamond: Action: http://localhost:3000 にアクセスしてください

# :white_check_mark: Result: で以下のように表示されればOKです。

# ![2022-03-06_00h58_13.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/5d7838cf-7363-dd60-f202-b298122165bf.png)

# <details><summary>Reactサンプルのソースコード解説</summary><div>

# `client/src/components/MainComponent.tsx` を見ると、Reactのコンポーネント内に定義した以下の `profile` を、

# ```ts
# const profile = {
#   imgSrc: "http://localhost:8080/images/profile.png",
#   name: "エメラルド 君沢",
#   jobTitle: "データベース エンジニア",
#   residence: "東京都 南アザラシ区 ペンギン町",
#   description:
#     " データベース エンジニアのエメラルド 君沢です。金融関連の会社の社内IT部門にて9年勤めたあと、3年ほどベンチャー企業を転々とし、いまは広告関連の会社でエンジニアをやっています。",
# };
# ```

# `ProfileComponent.tsx` に渡しています。

# ```tsx
# <ProfileComponent
#   imgSrc={profile.imgSrc}
#   name={profile.name}
#   jobTitle={profile.jobTitle}
#   residence={profile.residence}
#   description={profile.description}
# />
# ```

# ここから先は、このReactのコンポーネント内に定義した `profile` の代わりに、GraphQLサーバーから取得した `Profile` 型オブジェクトを利用するようにしましょう。

# ---

# </div></details>
