class Booking < ApplicationRecord
  belongs_to :room
  has_many :payments
end
