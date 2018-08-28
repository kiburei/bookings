class RenameColBookingIdBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :booking_ref
    rename_column :bookings, :booking_id, :booking_ref
  end
end
