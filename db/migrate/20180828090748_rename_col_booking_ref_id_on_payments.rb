class RenameColBookingRefIdOnPayments < ActiveRecord::Migration[5.2]
  def change
    rename_column :payments, :booking_id, :booking_ref
  end
end
