class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all


  end


  def show
  end


  def new
    if current_user
    @post = Post.new
    else
      redirect_to login_path, notice: 'Please login'
    end
  end


  def create
    @post = Post.create(post_params)
    @post.image.attach(params[:post][:image])
    redirect_to post_path(@post)
  end






  def edit
  end



  def update
    @post.image.purge
    @post.update(post_params)
    @post.image.attach(params[:post][:image])
    redirect_to post_path(@post)
  end

  def destroy

    # @image = ActiveStorage::Blob.find_signed(params[:id])
    @post.image.purge
    @post.delete
    redirect_to posts_path
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :description)
  end

end
