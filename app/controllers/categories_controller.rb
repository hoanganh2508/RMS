class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @dishes = Dish.all
  end
end
