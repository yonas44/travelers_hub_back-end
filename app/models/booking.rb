class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :package

  validates :start_time, presence: true, comparison: { greater_than_or_equal_to: Date.today }
  validates :end_time, presence: true, comparison: { greater_than: :start_time, greater_than: Date.today}
end
