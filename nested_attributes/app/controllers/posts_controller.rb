class PostsController < ApplicationController
  def new
    @post = Post.new
    @comment = @post.comments.build
  end

  def create
    raise params.inspect
    @post = Post.new(params[:post])
    @post.save

    redirect_to post_path(@post)
  end

  def show
    @post = Post.find(params[:id])
  end
end