class ChangeRefsToId < ActiveRecord::Migration[5.2]
  def change
    rename_column :bookings, :booking_ref, :booking_id
    rename_column :payments, :transaction_ref, :transaction_id
    rename_column :booking_details, :booking_ref, :booking_id
  end
end
