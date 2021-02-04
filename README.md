# AMORRIL

## アプリケーションの概要
  こちらは、サロンのホームページをベースに、管理者はカルテの管理ができるものとなっております。

## App URL
  https://amollir-new.herokuapp.com

## テスト用アカウント
  ID:
  Pass:

## 利用方法
  ホームページは誰でも閲覧することが可能です。
  管理者は管理者用のアカウントでログインすることで、トップページにカルテ管理のページが表示されます。
  そこから、カルテの登録、編集、削除を行うことができます。

## 目指した課題解決


## 洗い出した要件

## 実装した機能についてのGIFと説明

## 実装予定の機能

## データベース設計

## ローカルでの動作方法





## テーブル設計

### users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| family_name        | string  | null: false               |
| first_name         | string  | null: false               |
| family_name_kana   | string  | null: false               |
| first_name_kana    | string  | null: false               |
| birth_date_id      | date    | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| phone_number       | string  | null: false               |

#### Association

- has_many :calenders
- has_many :patients
- has_one :address

### address テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| postal_code   | string     | null: false                    |
| prefecture_id | integer    | null: false                    |
| city          | string     | null: false                    |
| address       | string     | null: false                    |
| building_name | string     |                                |
| user          | references | null: false, foreign_key: true |

#### Association

- belongs_to :user

### patients テーブル

| Column             | Type    | Options            |
| ------------------ | ------- | ------------------ |
| family_name        | string  | null: false        |
| first_name         | string  | null: false        |
| family_name_kana   | string  | null: false        |
| first_name_kana    | string  | null: false        |
| birth_date_id      | date    | null: false        |
| phone_number       | string  | null: false        |

#### Association

- has_one :karute
- has_one :patient_address

### patient_address テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| postal_code   | string     | null: false                    |
| prefecture_id | integer    | null: false                    |
| city          | string     | null: false                    |
| address       | string     | null: false                    |
| building_name | string     |                                |
| patient       | references | null: false, foreign_key: true |

#### Association

- belongs_to :patients

### calender テーブル
 
| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| date_id       | date       | null: false                    |
| time          | time       | null: false                    |
| menu_id       | integer    | null: false                    |
| user          | references | null: false, foreign_key: true |
| karute        | references | null: false, foreign_key: true |

#### Association

- belongs_to :user
- has_many :calender_karute
- has_many :karute, through: :calender_karute

### karute テーブル
 
| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| pain          | text       |                                |
| illness       | text       |                                |
| history       | text       |                                |
| medicine      | text       |                                |
| habit         | text       |                                |
| memo          | text       |                                |
| patient       | references | null: false, foreign_key: true |
| calender      | references | foreign_key: true              |


#### Association

- belongs_to :user
- has_many :calender_karute
- has_many :calender, through: :calender_karute


### calender_karute テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| calender      | references | null: false, foreign_key: true |
| karute        | references | null: false, foreign_key: true |

#### Association

- belongs_to :calender
- belongs_to :karute