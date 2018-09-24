class RemoveColBookingDate < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :booking_date
  end
end
