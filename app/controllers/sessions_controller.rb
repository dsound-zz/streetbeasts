class SessionsController < ApplicationController
skip_before_action :authorized, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/posts'
    else
      flash[:alert] = "Login error. Try again."
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end
