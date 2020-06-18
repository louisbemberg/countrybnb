class CountriesController < ApplicationController
  def index
    # @countries = Country.all // < BEFORE GEOCODING
    @countries = Country.geocoded # returns flats with coordinates

    @markers = @countries.map do |country|
      {
        lat: country.latitude,
        lng: country.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { country: country })
      }
    end
  end

  def new
    @country = Country.new
  end

  def create
    @country = Country.new(strong_params)
    @country.user_id = current_user.id
    if @country.save
      redirect_to countries_path
    else
      render :new
    end
  end

  def show
    @country = Country.find(params[:id])
  end

  def destroy
    @country = Country.find(params[:id])
    @country.destroy
    # no need for app/views/restaurants/destroy.html.erb
    redirect_to countries_path
  end

  private

  def strong_params
    params.require(:country).permit(:name, :description, :price_p_day, :address, :photo)
  end
end
