class Hotel < ApplicationRecord
  belongs_to :group
  has_many :rooms
  has_many :room_types
  has_many :bookings
end
