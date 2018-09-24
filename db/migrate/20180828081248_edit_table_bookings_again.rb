class EditTableBookingsAgain < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :arrival
  end
end
