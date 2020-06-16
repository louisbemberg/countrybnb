class CountriesController < ApplicationController
  def index
    @countries = Countries.all
  end
end
