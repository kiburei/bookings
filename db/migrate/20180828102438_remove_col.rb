class RemoveCol < ActiveRecord::Migration[5.2]
  def change
    remove_column :booking_details, :bookings_id
  end
end
