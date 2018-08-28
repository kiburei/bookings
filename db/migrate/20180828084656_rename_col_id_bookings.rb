class RenameColIdBookings < ActiveRecord::Migration[5.2]
  def change
    rename_column :bookings, :id, :booking_id
  end
end
