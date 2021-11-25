class BookingsController < ApplicationController

  def new
    @game = Game.find(params[:game_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @game = Game.find(params[:game_id])
    @booking = Booking.new(booking_params)
    @booking.game = @game
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to dashboard_path
    else
      render "games/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :game_id, :user_id)
  end
end
