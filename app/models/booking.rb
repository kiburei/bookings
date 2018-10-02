class Booking < ApplicationRecord
  # belongs_to :user
  has_many :payments
  has_many :booking_details

  # validates_presence_of :amount, :booking_date
end
