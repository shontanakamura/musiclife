# README

# music-life DB設計

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
|user_id|integer|null: false|

# Association

  has_many :posts
  has_many :comments

## postsテーブル

|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|content|string|null: false|
|image|text|null: false|
|user_id|integer|null: false|

## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|post_id|integer|null: false|
|user_id|integer|null: false|