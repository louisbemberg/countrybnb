class BookingsController < ApplicationController
  def index
    # Bookings that you have made as a guest
    @bookings = current_user.bookings
    @received_bookings = current_user.received_bookings
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(strong_params)
    @country = Country.find(params[:country_id])
    @booking.country = @country
    @booking.country_id = @country.id
    @booking.user_id = current_user.id
    @booking.save

    redirect_to bookings_path
  end

  def destroy
  end

  private

  def strong_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
