class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to(:action => 'show', :id => @post.id)
    else
      render('new')
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find([params[:id]])
    if @post.update_attributes(post_params)
      redirect_to(:action => 'show', :id => @post.id)
    else
      render('')
    end
  end

  def delete
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id]).destroy
    redirect_to(:action => '')
  end


  private
  def post_params
    params.require(:post).permit(:title, :description, :category)
  end
end
