class Room < ApplicationRecord
  belongs_to :hotel
  has_one :booking
  has_many :booking_details
end
