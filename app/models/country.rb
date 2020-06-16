class Country < ApplicationRecord
  belongs_to :user
  # @country.user, shows owner of the country
  has_many :users, through: :bookings
end
