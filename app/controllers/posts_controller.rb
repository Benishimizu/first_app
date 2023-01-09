class PostsController < ApplicationController
  def index  # indexアクションを定義した
    # @post = "これはコントローラーで定義したインスタンス変数を確認するための文字列です"
    # @post = Post.find(1)  # 1番目のレコードを@postに代入

    @posts = Post.all  # すべてのレコードを@postsに代入

  end
  def new 
    # posts_controller.rbにnewアクションを定義しましょう。
  end

  def create
    # posts_controller.rbにcreateアクションを定義しましょう。空のcreateアクションだけを定義します。
    Post.create(content: params[:content])
  
  end

end



# ① text_fieldで指定した値がcontextになっているが、コントローラーで受け取っているパラメーターはparams[:content]であるため
# ② Post.newでインスタンス（レコード）を生成しただけで保存していないため