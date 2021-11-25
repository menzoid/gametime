class ReviewsController < ApplicationController
  def new
    @game = Game.find(params[:game_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @game = Game.find(params[:game_id])
    @review.game = @game
    if @review.save
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to game_path(@review.game)
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
