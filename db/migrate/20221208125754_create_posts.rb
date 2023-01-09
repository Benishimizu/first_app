class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text :content
      t.timestamps
    end
  end
end


# # # モデルを作成
# % rails g model モデル名
# 
1
2
3
4
5
# first_appディレクトリにいることを確認
# % pwd

# postモデルを作成
# % rails g model post
# # first_appのディレクトリにいることを確認
# % pwd

# # マイグレーションを実行
# % rails db:migrate
#  rollback せずに実行した場合は反映がされないから最初から同じ作業が必要になるから必ずSTATUSをDOWNに戻すことが必要になる

# # マイグレーションファイルの状況を確認
# % rails db:migrate:status

# マイグレーションファイルを修正できるように、rails db:rollbackコマンドでマイグレーションファイルを差し戻しましょう。

# ターミナル
# 
# % rails db:rollback
# ロールバックを実行したので、再度状態を確認しましょう。

# ターミナル
# 
# % rails db:migrate:status
