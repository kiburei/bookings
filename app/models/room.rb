class Room < ApplicationRecord
  belongs_to :hotel
  has_one :booking
  has_many :booking_details
  has_one :room_type

  validates_presence_of :status, :cost, :capacity, :beds, :baths, :room_type_id, :room_number
  # validates_uniqueness_of :room_number

end
