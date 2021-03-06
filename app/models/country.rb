class Country < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  validates :address, presence: true
  after_validation :geocode, if: :will_save_change_to_address?
  # @country.user, shows owner of the country
  has_many :users, through: :bookings
  has_one_attached :photo
  has_many :bookings
end
