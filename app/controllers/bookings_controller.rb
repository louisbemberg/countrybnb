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
    if @booking.save
      redirect_to bookings_path
    else
      redirect_to country_path(@country, anchor: "anchor")
      flash[:alert] = @booking.errors.full_messages.first
      # data: { confirm: "Are you sure?" }
      # render "countries/show"

    end
  end

  def destroy
  end

  def update
    @booking = Booking.find(params[:id])
    if params[:query] == "accept"
      @booking.status = "accepted"
      @booking.save
      redirect_to bookings_path
    else
      @booking.status = "cancelled"
      @booking.save
      redirect_to bookings_path
    end
  end

  private

  def strong_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  # def date_validation
  # if self[:end_date] < self[:start_date]
  #   errors[:end_date] << "Error message"
  #   return false
  # else
  #   return true
  # end
#end

end
