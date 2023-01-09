# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration


12.11
# モデルのインスタンスを生成
model = Model.new

# インスタンスにデータを追加
model.text = "追加するデータ"

# テーブルにレコードを保存
model.save
* Database creation



# first_appのディレクトリにいることを確認
% pwd

# コンソールの起動
% rails c

Post.all
# => Postモデル（postsテーブル）の全てのデータを取得する

Post.find(2)
# => Postモデル（postsテーブル）の2番目のデータを取得する
このようにidを指定して、1つのレコードだけが取得できました。

 レコードを変数に代入しましょう
これらは変数に代入することが可能です。変数postに1番目のレコードを代入しましょう。
irb(main):003:0> の後にpost = Post.find(1)とコードを記述し実行します。

コンソール
1
2
3
4
irb(main):003:0> post = Post.find(1)
  Post Load (0.3ms)  SELECT  `posts`.* FROM `posts` WHERE `posts`.`id` = 1 LIMIT 1
=> #<Post id: 1, content: "はじめまして", created_at: "2019-01-01 00:00:00", updated_at: "2019-01-02 00:00:00">
irb(main):004:0>
 変数でレコードを表示してみましょう
irb(main):004:0>の後にそのままpostと変数を記述して実行すると、さきほど代入した1番目のデータが表示されます。

コンソール
1
2
3
irb(main):004:0> post
=> #<Post id: 1, content: "はじめまして", created_at: "2019-01-01 00:00:00", updated_at: "2019-01-02 00:00:00">
irb(main):005:0>
変数postにデータが代入できていることが確認できました。

 カラムデータを表示してみましょう
次に、contentのみを表示してみます。irb(main):005:0> の後にpost.contentとコマンドを記述して実行しましょう。

コンソール
1
2
3
irb(main):005:0> post.content
=> "はじめまして"
irb(main):006:0>
このようにcontentカラムのデータだけを表示することができました。

次に、irb(main):006:0>の後にcreated_atカラムも表示してみましょう。

コンソール

irb(main):006:0> post.created_at
=> Tue, 01 Jan 2019 00:00:00 UTC +00:00
irb(main):007:0>
このように.カラム名を続けて記載することで、カラムのデータだけを取得できます。
-------








findファインドメソッド
モデルが使用できるActiveRecordメソッドのひとつです。
メソッドの引数に、レコードのidを記述することで、そのidに対応するレコードを取得します。

findメソッドは、モデルのクラスに対して使用します。

【例】
1
モデル名.find(レコードのid)
それでは、コントローラーでモデルとfindメソッドを利用しましょう。

 コントローラーでデータを取得しましょう
コントローラーでモデルを利用します。
postsコントローラーを以下のように編集しましょう。

app/controllers/posts_controller.rb

class PostsController < ApplicationController
  def index
    @post = Post.find(1)  # 1番目のレコードを@postに代入
  end
end



* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
