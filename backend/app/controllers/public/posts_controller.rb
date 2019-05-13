class Public::PostsController < ApplicationController
  skip_before_action :authenticate_user!, :verify_authenticity_token

  def index
    @posts = Post.all.filter_by(params[:categories].split(",").map(&:to_i)).sample
    render json: @posts
  end

  def create
    category = Category.find params[:id]
    post = category.posts.create! content: params[:content]
    render json: post
  end
end
