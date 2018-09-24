class AddBookingToBookingDetails < ActiveRecord::Migration[5.2]
  def change
    add_reference :booking_details, :bookings.booking_ref, index: true, foreign_key: true
  end
end
