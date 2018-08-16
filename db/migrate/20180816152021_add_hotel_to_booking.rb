class AddHotelToBooking < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :hotel, foreign_key: true
  end
end
