class Public::CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, :verify_authenticity_token

  def index
    categories = Category.all
    result = {}
    categories.each {|x| result[x.name] = true }

    render json: result
  end
end
