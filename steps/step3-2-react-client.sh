# #!/bin/sh

# :large_orange_diamond: Action: 新たなターミナルを立ち上げてください

# :large_orange_diamond: Action: 以下の一連のコマンドを実行してください

# ```terminal: Reactクライアント (ターミナル)
cp -r answers/client1 client
cd client
npm install
# ```

# <details><summary>npmのDependenciesが最新であることを確認する</summary>

# <div>
# :large_orange_diamond: Action: 以下のコマンドを実行してください

# ```terminal: Reactクライアント (ターミナル)
# npx npm-check-updates
# ```

# :white_check_mark: Result: 以下のように表示されればOKです。

# ```
# All dependencies match the latest package versions :)
# ```

# `package.json`の`Dependencies`に指定されたnpmパッケージ群の、最新バージョンがすでにインストールされています。

# `All dependencies match the latest package versions :)` ではなく、以下のように表示された場合はどうすればよいでしょう？

# ```
#  apollo-server   ^3.6.0  →   ^3.6.2     
#  graphql        ^16.1.0  →  ^16.3.0    

# Run ncu -u to upgrade package.json
# ```

# :large_orange_diamond: Action: 上記メッセージの通り、以下のコマンドを実行してください

# ```terminal: Reactクライアント (ターミナル)
# npx ncu -u
# ```

# これで、最新バージョンのnpmパッケージ群がインストールされます。

# - - -

# </div></details>

# :large_orange_diamond: Action: 以下のコマンドを実行してください

# ```terminal: Reactクライアント (ターミナル)
npm run start
# ```

# :white_check_mark: Result: http://localhost:3000/ で以下のページが表示されます。

# ![image.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/cfcd14ae-4ae7-d92a-d806-ab8b930cf070.png)

# <details><summary>これは<a href="https://create-react-app.dev/">create-react-app</a>で生成したReactアプリケーションを単純化したものです</summary>

# <div>

# https://create-react-app.dev/docs/getting-started にあるとおり、以下のコマンドを実行すれば、Reactのサンプルアプリケーションが生成されます。

# ```
# npx create-react-app client --template typescript
# ```

# ここまでの手順で作成したclientディレクトリの中には、上記のコマンドで生成したアプリケーションから、このチュートリアルで利用しない部分を取り除いて、ソースコードを単純化したものです。

# - - -

# </div></details>
