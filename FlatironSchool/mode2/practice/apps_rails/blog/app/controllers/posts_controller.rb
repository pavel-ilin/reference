class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
  end

  def create
    @post = Post.new(params.require(:post).permit(:title, :content, :user_id))
    @post.save
    redirect_to @post
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to posts_path
  end

private

  def post_params
    params.require(:post).permit(:title, :content, :user_id)
  end

end