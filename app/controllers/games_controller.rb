class GamesController < ApplicationController
  before_action :set_game, only: %i[show edit update destroy]
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

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  private

  def set_game
    @game = List.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:name, :difficulty, :player_count, :play_time, :price, :description)
  end
end
