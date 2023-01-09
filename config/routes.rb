Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'posts', to: 'posts#index' 
  get 'posts/new', to: 'posts#new' 
  post 'posts', to: 'posts#create'
  
# ルーティングでposts_controllerのnewアクションに行き先を指定する
# そのあとrails routesを実行して、ルーティングが正しく設定できたことを確認しましょう。
# get "posts/index" OR get "posts" Both are fine 
# Though if we write "posts" for twice, the saver cannot recognise which is better to use
# If we write [get "post"] twice, line 4 will not occur

end

# Rails.application.routes.draw do
#   HTTPメソッド 'URIパターン', to: 'コントローラー名#アクション名'
#   HTTPメソッド 'URIパターン(postもしくは'posts/new')', to: 'コントローラー名#アクション名'
# HTTPメソッド 'URIパターン', : Request Or Shipping address
# 'コントローラー名#アクション名' : What kind of action
# 
#  end


# 「データを投稿する」というリクエストがあった場合の処理の振り分けをしましょう。:Line5

