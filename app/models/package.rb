class Package < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :title, :description, :destination, :photo, :accomodation, presence: true
  validates :price, :promotion, length: { minimum: 0 }
end
