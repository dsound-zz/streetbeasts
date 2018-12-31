class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]


  def index
    @users = User.all
  end

  def show

  end


  def new
    @user = User.new
  end


  def create
    @user = User.new(user_params)
    @user.email.downcase!
    if @user.save
      flash[:notice] = "Account created successfully!"

      redirect_to login_path
    else
      flash.now.alert = "Oops, couldn't create account! Please check email and password"
      render :new
    end
  end


  def edit
  end


  def update
    @user.update(user_params)
    redirect_to user_path(@user)
  end



  def destroy
    @user.delete
    reset_session
    @current_user = nil
    redirect_to posts_path
  end


  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :username, :password, :password_confirmation, :avatar)
  end



end
