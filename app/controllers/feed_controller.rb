# feed controller only shows posts

class FeedController < ApplicationController
  def index
    @posts = Post.all
    @categories = Category.all
  end
end
