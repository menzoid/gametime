class GamesController < ApplicationController
  def index
    @games = policy_scope(Game)
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
    authorize @game
  end
end
