#!/bin/sh

cd "$(dirname "$0")" || exit # REMOVE THIS IN aggregate.sh 
cd ../ || exit               # REMOVE THIS IN aggregate.sh - cd to the git repository root

# ## 1. HTMLでサンプル完成時の見た目を確認

# 後ほどReactを使って実装し直しますが、まずは簡単のためHTMLでサンプル完成時の見た目確認しましょう。

# :large_orange_diamond: Action: 以下のコマンドを実行してください

# ```terminal: メイン・ターミナル
cp answers/step1-html/index1.html index.html
cp answers/step1-html/profile.png profile.png
# ```

# :large_orange_diamond: Action: ブラウザから`index.html`を開いてください。

# <details><summary>VS Codeを使っている場合の<code>index.html</code>の開き方</summary><div>

# :large_orange_diamond: Action: Windowsの場合はindex.htmlの上でマウス右クリックからReveal in Explorer、Macの場合はReveal in Finderを選択してください。

# ![2022-03-02_08h23_30.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/f18ae5f9-e11a-9677-4fdf-d1c8b3ffe45a.png)

# :white_check_mark: Result: `index.html`を含むフォルダが表示されるので、`index.html`をダブルクリックすれば、デフォルトのブラウザで開くはずです。

# ---

# </div></details>

# :white_check_mark: Result: 以下のように表示されればOKです。

# ![2022-03-03_08h29_32.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/bb743a21-9177-6d7f-74d3-1d187a5e97c8.png)

# これがサンプル完成時の見た目です。ここから先はファイルサーバー、Reactクライアント、GraphQLサーバーと順番に導入しながら、この見た目を再現していきます。