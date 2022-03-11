#!/bin/sh

# ![2022-03-05_19h09_43.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/e9cde174-5eb0-79b7-c2b6-684d8ecac4a6.png)

# :large_orange_diamond: Action: ファイルサーバーは走らせたまま、メインのターミナルで以下の一連のコマンドを実行してください

# ```terminal: メイン (ターミナル)
cp answers/html/index2.html index.html
rm profile.png
# ```

# :large_orange_diamond: Action: 先程のブラウザ画面をリロードしてください

# :white_check_mark: Result: 同じ画面が表示されればOKです。

# ![2022-03-03_08h29_32.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/bb743a21-9177-6d7f-74d3-1d187a5e97c8.png)

# `profile.png`がローカルファイルではなく、ファイルサーバーの http://localhost:8080/images/profile.png から取得されています。
