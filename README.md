## はじめに

GraphQL を学びたい JavaScript 初心者へ向けてチュートリアルを用意しました。Web ページ 1 枚分の非常に簡素なサンプルですが、クライアントサイドとサーバーサイドの間でどのようにデータをやり取りするかを学べます。

理解の前に「動かす感覚」を味わってもらうため、**ほぼ全てコピー&ペーストのみで**、素早く進められるチュートリアルになっています。

## 以前の内容

- [コピペで素早く学ぶ GraphQL、Apollo Server Getting Started](https://qiita.com/RichardImaokaJP/items/ca32e73f922673bc95a5)
- [コピペで素早く学ぶ GraphQL、Apollo Server Getting Resolver](https://qiita.com/RichardImaokaJP/items/2abd1a4200c6dbe45ee6)

## 事前準備

node と npm がインストール済みであることを確認して下さい。

## git レポジトリのクローン

:large_orange_diamond: Action: ターミナルで以下の一連のコマンドを実行してください

```terminal: メイン (ターミナル)
git clone https://github.com/richardimaoka/tutorial-apollo-app-self-intro.git
cd tutorial-apollo-app-self-intro
```

後ほど別のターミナルを立ち上げるので、このターミナルは `メイン` と表記します。

## HTMLでサンプル完成時の見た目を確認

後ほどReactを使って実装し直しますが、まずはHTMLでサンプル完成時の見た目確認しましょう。

:large_orange_diamond: Action: 以下の一連のコマンドを実行してください

```terminal: メイン (ターミナル)
cp answers/html/index1.html index.html
cp answers/html/profile.png profile.png
```

:large_orange_diamond: Action: ブラウザから`index.html`を開いてください。

<details><summary>VS Codeを使っている場合の<code>index.html</code>の開き方</summary><div>

:large_orange_diamond: Action: Windowsの場合はindex.htmlの上でマウス右クリックからReveal in Explorer、Macの場合はReveal in Finderを選択してください。

![2022-03-02_08h23_30.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/f18ae5f9-e11a-9677-4fdf-d1c8b3ffe45a.png)

:white_check_mark: Result: `index.html`を含むフォルダが表示されるので、`index.html`をダブルクリックすれば、デフォルトのブラウザで開くはずです。

</div></details>

:white_check_mark: Result: 以下のように表示されればOKです。

![2022-03-03_08h29_32.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/bb743a21-9177-6d7f-74d3-1d187a5e97c8.png)


## プロフィール画像をローカルのファイルサーバーから取得

:large_orange_diamond: Action: 別のターミナルを立ち上げ、以下の一連のコマンドを実行してください

```terminal: ファイルサーバー (ターミナル)
cp -r answers/file-server file-server
cd file-server
npm install
```

:large_orange_diamond: Action: 以下のコマンドを実行してください

```terminal: ファイルサーバー (ターミナル)
npm run start
```

:white_check_mark: Result: http://localhost:8080/ でファイルサーバーが立ち上がります。

![2022-03-05_19h09_43.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/e9cde174-5eb0-79b7-c2b6-684d8ecac4a6.png)


![2022-03-05_19h09_43.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/e9cde174-5eb0-79b7-c2b6-684d8ecac4a6.png)

:large_orange_diamond: Action: ファイルサーバーは走らせたまま、メインのターミナルで以下の一連のコマンドを実行してください

```terminal: メイン (ターミナル)
cp answers/html/index2.html index.html
rm profile.png
```

:large_orange_diamond: Action: 先程のブラウザ画面をリロードしてください

:white_check_mark: Result: 同じ画面が表示されればOKです。

![2022-03-03_08h29_32.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/bb743a21-9177-6d7f-74d3-1d187a5e97c8.png)

`profile.png`がローカルファイルではなく、ファイルサーバーの http://localhost:8080/images/profile.png から取得されています。

## React環境のセットアップ

:large_orange_diamond: Action: 以下のコマンドを実行してください

```terminal: メイン (ターミナル)
rm -f index.html
```


:large_orange_diamond: Action: 新たなターミナルで、以下の一連のコマンドを実行してください

```terminal: Reactクライアント (ターミナル)
cp -r answers/client1 client
cd client
npm install
```

<details><summary>npmのDependenciesが最新であることを確認する</summary>

<div>
:large_orange_diamond: Action: 以下のコマンドを実行してください

```terminal: Reactクライアント (ターミナル)
npx npm-check-updates
```

:white_check_mark: Result: 以下のように表示されればOKです。

```
All dependencies match the latest package versions :)
```

`package.json`の`Dependencies`に指定されたnpmパッケージ群の、最新バージョンがすでにインストールされています。

`All dependencies match the latest package versions :)` ではなく、以下のように表示された場合はどうすればよいでしょう？

```
 apollo-server   ^3.6.0  →   ^3.6.2     
 graphql        ^16.1.0  →  ^16.3.0    

Run ncu -u to upgrade package.json
```

:large_orange_diamond: Action: 上記メッセージの通り、以下のコマンドを実行してください

```terminal: Reactクライアント (ターミナル)
npx ncu -u
```

これで、最新バージョンのnpmパッケージ群がインストールされます。

- - -

</div></details>

:large_orange_diamond: Action: 以下のコマンドを実行してください

```terminal: Reactクライアント (ターミナル)
npm run start
```

:white_check_mark: Result: http://localhost:3000/ で以下のページが表示されます。

![image.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/cfcd14ae-4ae7-d92a-d806-ab8b930cf070.png)

<details><summary>これは<a href="https://create-react-app.dev/">create-react-app</a>で生成したReactアプリケーションを単純化したものです</summary>

<div>

https://create-react-app.dev/docs/getting-started にあるとおり、以下のコマンドを実行すれば、Reactのサンプルアプリケーションが生成されます。

```
npx create-react-app client --template typescript
```

ここまでの手順で作成したclientディレクトリの中には、上記のコマンドで生成したアプリケーションから、このチュートリアルで利用しない部分を取り除いて、ソースコードを単純化したものです。

- - -

</div></details>

## Reactのみでサンプル完成時の見た目を構築

次にReactのみで、GraphQLサーバーサイドを準備せず、サンプル完成時の見た目を構築しましょう。

:large_orange_diamond: Action: 以下のコマンドを実行してください

```terminal: メイン (ターミナル)
cp -r answers/client2/src client
rm -f client/src/App.tsx
```

:large_orange_diamond: Action: http://localhost:3000 にアクセスしてください

:white_check_mark: Result: で以下のように表示されればOKです。

![2022-03-06_00h58_13.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/5d7838cf-7363-dd60-f202-b298122165bf.png)

<details><summary>Reactサンプルのソースコード解説</summary><div>

`client/src/components/MainComponent.tsx` を見ると、Reactのコンポーネント内に定義した `profile` を、

```ts
const profile = {
  imgSrc: "http://localhost:8080/images/profile.png",
  name: "エメラルド 君沢",
  jobTitle: "データベース エンジニア",
  residence: "東京都 南アザラシ区 ペンギン町",
  description:
    " データベース エンジニアのエメラルド 君沢です。金融関連の会社の社内IT部門にて9年勤めたあと、3年ほどベンチャー企業を転々とし、いまは広告関連の会社でエンジニアをやっています。",
};
```

`ProfileComponent.tsx` に渡しています。

```tsx
<ProfileComponent
  imgSrc={profile.imgSrc}
  name={profile.name}
  jobTitle={profile.jobTitle}
  residence={profile.residence}
  description={profile.description}
/>
```

以下では、このReactのコンポーネント内に定義した `profile` の代わりに、GraphQLサーバーから取得した `Profile` 型オブジェクトを利用するようにしましょう。

---

</div></details>

## GraphQLサーバー立ち上げ

:large_orange_diamond: Action: 新たなターミナルで、以下の一連のコマンドを実行してください

```terminal: GraphQLサーバー (ターミナル)
cp -r answers/server1 server
cd server
npm install
```

:large_orange_diamond: Action: 以下のコマンドを実行してください

```terminal: GraphQLサーバー (ターミナル)
npm run start
```

:large_orange_diamond: Action: ブラウザで http://localhost:4000/ を開いてください

:white_check_mark: Result: 以下のようなApollo Studio Explorerの画面が表示されます。

![image.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/58dd6755-b37b-9f64-3047-a1a2e8e7b0b9.png)

:large_orange_diamond: Action: "Query your server"ボタンを押してください

:white_check_mark: Result: 以下のような画面に遷移します。

![2022-03-06_09h04_06.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/e32d47ea-e138-8beb-acec-1441174f7e11.png)

:large_orange_diamond: Action: 以下のクエリをApollo Studio Explorerの画面に貼り付けて、"Run"ボタンを押してください

```
{
  me {
    name
    residence
    imgSrc
    jobTitle
    description
  }
}
```

:white_check_mark: Result: Stringのmock値である"Hello World"で埋められたレスポンスが得られます。

![2022-03-12_00h45_02.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/1f54b20b-5c40-9894-cc12-9ea2cbe11a38.png)

ここから先は、mock値ではなくResolverを使ってGraphQLサーバーからのレスポンスを返します。

## GraphQLサーバーでProfileオブジェクトを返す

:large_orange_diamond: Action: 以下のコマンドを実行してください

```terminal: メイン (ターミナル)
cp answers/server2/* server
```

<details><summary>ソースコードの解説</summary>

<div>

上記コマンドによって `data.json` が配置され、

```json:data.json
{
  "me": {
    "imgSrc": "http://localhost:8080/images/profile.png",
    "name": "エメラルド 君沢",
    "jobTitle": "データベース エンジニア",
    "residence": "東京都 南アザラシ区 ペンギン町",
    "description": " データベース エンジニアのエメラルド 君沢です。金融関連の会社の社内IT部門にて9年勤めたあと、3年ほどベンチャー企業を転々とし、いまは広告関連の会社でエンジニアをやっています。"
  }
}
```

これが下記のGraphQLスキーマに対応しています。

```graphql:schema.gql
type Query {
  me: Profile
}

type Profile {
  imgSrc: String
  name: String
  residence: String
  jobTitle: String
  description: String
}
```

`index.ts` の中で `data.json` を読み込んで、GraphQLサーバーからのレスポンスとしてそのまま利用しています。

```ts:index.ts
const jsonDataFile = __dirname.concat("/data.json");
```

---

</div></details>

:large_orange_diamond: Action: 再び先程のクエリをApollo Studio Explorerの画面から実行してください。

:white_check_mark: Result: 以下のように表示されればOKです。

![2022-03-12_00h48_17.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/75738/5557c9eb-cde6-6d3b-a53b-621306cbdcb2.png)

## Reactクライアントで、GraphQLサーバーから取得したレスポンスを使う

:large_orange_diamond: Action: 以下のコマンドを実行してください

```terminal: メイン (ターミナル)
cp answers/client3/* client
```

## Bonus: エラーハンドリングを入れてみる

