class Booking < ApplicationRecord
  has_many :rooms
  has_many :payments
end
