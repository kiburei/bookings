class BookingDetail < ApplicationRecord
  belongs_to :booking
  # belongs_to :room

  validates_presence_of :checkin, :checkout, :amount
end
