class GamesController < ApplicationController
  def index
    @games = Game.all
    @categories = Category.all
  end

  def category
    @category = Category.find(params[:id])
    @games = @category.games
  end

  def show
    @game = Game.find(params[:id])
  end
end
