# README

# アプリ名　Music Life
![musicimage](https://user-images.githubusercontent.com/63178332/84154764-7904c100-aaa2-11ea-988a-97420fa7f823.jpg)

# 説明

音楽が好きなので、自分の好きな音楽をみんなに共有するアプリが作りたくて制作しました。
使える機能は、ログイン機能、画像投稿機能、コメント機能、コメント削除機能を実装しました。
トップページはvideoタグを動画を埋めこみ、動きのある背景にしました。
Canvaというデザインができるサイトを利用して、ヘッダーのロゴを作成、背景画像も使用しました。
デフォルトの文字では、あどけなかったので、フォントもフリーサイトから、インストールして実装しました。

# 説明
トップページから、ログインして新規投稿で画像とタイトルとコメントを記入する事ができます。
ログインした人は、コメントしたメンバーの投稿を見る事ができます。
コメントを削除したり、マイページへ遷移する機能もついています。

# Music Life DB設計

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
|user_id|integer|null: false|

# Association
- has_many :posts
- has_many :comments

## postsテーブル

|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|content|string|null: false|
|image|text|null: false|
|user_id|integer|null: false|

# Association
- belongs_to :user
- has_many :comments

## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|post_id|integer|null: false|
|user_id|integer|null: false|

# Association
- belongs_to :user
- belongs_to :post
