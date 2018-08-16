class Room < ApplicationRecord
  belongs_to :hotel
  has_one :booking
end
