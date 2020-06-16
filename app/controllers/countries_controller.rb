class CountriesController < ApplicationController
  def index
    @countries = Country.all
  end

  def new
    @country = Country.new()
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

 private

  def strong_params
    params.require(:country).permit(:name, :description, :price_p_day)
  end

end
