class HomeController < ApplicationController
  def index
    @users = User.all
    @posts = Post.all
    @animals = Animal.all 

  end
end
