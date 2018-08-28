class Booking < ApplicationRecord
  has_many :payments
  has_many :booking_details
end
