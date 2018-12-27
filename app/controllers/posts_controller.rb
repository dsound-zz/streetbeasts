class PostsController < ApplicationController

  def index
    @posts = Post.with_attached_image
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    byebug

    @post = Post.new(post_params)
    @post.save

    redirect_to post_path(@post)
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :address, :image)
  end

end
