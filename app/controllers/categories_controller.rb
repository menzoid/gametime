class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    authorize @category
    @games = @category.games
  end
end
