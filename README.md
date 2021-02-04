# AMORRIL

## アプリケーションの目的
  1.簡単にカルテを作成、編集できるようにしたい
      →アプリケーション上にカルテ（患者情報、カルテなどの情報）を管理
  2.ウェブからの予約管理ができるようにしたい
      →管理者は予約を管理し、簡単にスケジューリング

## App URL
  https://amollir-new.herokuapp.com

## アカウント情報
  * Basic認証  
    * ID: amollir_admin  
    * Pass: 8888  

  * 管理者用アカウント  
    * メールアドレス: admin@testtest  
    * パスワード: noesouta87  


## 利用方法
  ・各ページはログインの必要なく誰でも閲覧することが可能  
  ・管理者は管理者用のアカウントでログインすることで、トップページにカルテ管理のページが表示され、カルテの登録、編集、削除を行うことができる

## 実装した機能についてのGIFと説明
  #### ホームページ部分
  [![Image from Gyazo](https://i.gyazo.com/aeb1ba5acf32fed6c47986b39537f1d3.gif)](https://gyazo.com/aeb1ba5acf32fed6c47986b39537f1d3)
    ・トップページの状況

  [![Image from Gyazo](https://i.gyazo.com/3fe85d5633c0f8ced6c2f0f73bbee85f.gif)](https://gyazo.com/3fe85d5633c0f8ced6c2f0f73bbee85f)
    ・各ページの状況

  #### カルテ管理機能の実装
   ##### ①一覧画面
  [![Image from Gyazo](https://i.gyazo.com/9a622fdc0000ce9207598466b3509570.png)](https://gyazo.com/9a622fdc0000ce9207598466b3509570)  


    ・登録している患者を五十音順で表示させる  
    ・今後患者情報が増えることを想定し、苗字、苗字カナ、名前、名前カナ、電話番号で検索をかけることができる

   ##### ②詳細画面
  [![Image from Gyazo](https://i.gyazo.com/7ada3c49c6ec2aaadbddd1953d11c005.png)](https://gyazo.com/7ada3c49c6ec2aaadbddd1953d11c005)  


    ・登録は「患者情報」→「患者の住所」→「カルテ」の順で行い、一覧より登録が完了している患者情報をクリックすることで、カルテを確認することができる
    ・上のリンクより各情報を編集することができ、削除すると登録されたデータを削除することができる


## 実装予定の機能
  ウェブからの予約機能
  予約の管理機能

## データベース設計
  [![Image from Gyazo](https://i.gyazo.com/b4aaadff508d9e64acb54c942f1fff07.png)](https://gyazo.com/b4aaadff508d9e64acb54c942f1fff07)

## ローカルでの動作方法

    % git clone https://github.com/noe-kikuchi/amollir_new
    % cd amollir_new
    % bundle install
    % yarn install
    % rails db:create
    % rails db:migrate
    % rails s
  
  ### 開発環境
    Ruby 2.6.5
    Rails 6.0.0
    HTML/CSS
    JavaScript
    MySQL2
    VS Code

