class BookingsController < ApplicationController
  def index
    @bookings = Bookings.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(strong_params)
    @booking.country_id = country.id
    @booking.user_id = current_user.id
  end

  def destroy
  end

  private

  def strong_params
  end

end