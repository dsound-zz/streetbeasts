class PostsController < ApplicationController
  before_action :current_user, only: [:edit, :update, :destroy]
  before_action :find_post, only: [:show, :edit, :like, :update, :destroy]
  skip_before_action :authorized, only: [:index, :new, :create]

  def index
    @posts = Post.all
  end

  def show
  end


  def new
    @post = Post.new
  end


  def create
    byebug
    if post_params[:new_location]
       new_params = post_params
       new_params[:location_id] = Location.create(address: post_params[:new_location]).id
       new_params.delete(:new_location)
       @post = Post.create(new_params)
       @post.image.attach(params[:post][:image])
       redirect_to post_path(@post)
     else
       new_params = post_params
       new_params.delete(:new_location)
       @post = Post.create(new_params)
       @post.image.attach(params[:post][:image])
       redirect_to post_path(@post)
    end
  end


  def edit
    if current_user == nil
      authorized
    end
  end



  def like
    if current_user == nil
      authorized
    else
    @post.update(likes: @post.likes.to_i + 1)
    render :show
    end
  end


  def update
    @post.image.purge
    @post.update(post_params)
    @post.image.attach(params[:post][:image])
    redirect_to post_path(@post)
  end

  def destroy
    if current_user == nil
      authorized
    else
    @post.image.purge
    @post.delete
    redirect_to posts_path
    end
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :description, :likes, :user_id, :animal_id, :image, :location_id, :new_location)
  end


end
