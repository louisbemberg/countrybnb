class AddCountryAndUserRefenrencesToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :user, foreign_key: true
    add_reference :bookings, :country, foreign_key: true
  end
end
