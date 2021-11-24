class GamesController < ApplicationController
  before_action :set_game, only: %i[show]
  def index
    @featured_game = Game.all.sample
    @games = policy_scope(Game)
  end

  def show
    @game = Game.find(params[:id])
    authorize @game
  end

  def new
    @game = Game.new
    authorize @game
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user
    authorize @game
    if @game.save
      redirect_to games_path(@game)
    else
      render :new
    end
  end

  def edit
    authorize @game
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:title, :difficulty, :player_count, :play_time, :price, :description, :category_id)
  end
end
