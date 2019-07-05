class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    #ストロングパラメーターを使用
    post = Post.new(post_params)
    post.save
    redirect_to '/top'
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
