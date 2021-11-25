class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @games = Game.all
    @categories = Category.all
  end

  def dashboard
    @bookings = Booking.all
    # @bookings = current_user.bookings
  end
end
