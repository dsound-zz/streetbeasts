class SearchController < ApplicationController
skip_before_action :authorized, only: [:index]

  def index

      @results = Post.all.select do |p|
        p.title.downcase.include?(params[:q].downcase.strip)
      end
  end
end
