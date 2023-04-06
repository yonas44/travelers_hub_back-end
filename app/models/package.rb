class Package < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :title, :description, :destination, :photo, :accomodation, presence: true
  validates :flight, :bus, acceptance: true
  validates :price, :promotion, length: { minimum: 1 }
  
end
