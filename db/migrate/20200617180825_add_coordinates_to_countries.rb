class AddCoordinatesToCountries < ActiveRecord::Migration[6.0]
  def change
    add_column :countries, :latitude, :float
    add_column :countries, :longitude, :float
    add_column :countries, :address, :string
  end
end
