class EditTableBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :checkin
    remove_column :bookings, :checkout
    remove_column :bookings, :payment_status
    remove_column :bookings, :room_id
    remove_column :bookings, :hotel_id
  end
end
