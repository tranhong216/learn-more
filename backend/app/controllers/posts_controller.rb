class PostsController < ApplicationController
  before_action :find_post, only: %i(edit destroy reject accept)

  def index
    @posts = Post.all
  end

  def reject
    post.rejected!
    redirect_to posts_path
  end

  def accept
    post.avaiable!
    redirect_to posts_path
  end

  def destroy
    post.destroy
    redirect_to posts_path
  end

  private

  attr_reader :post

  def find_post
    @post = Post.find_by params[:id]
  end

  def post_params
    params.require(:post).permit :status
  end
end
