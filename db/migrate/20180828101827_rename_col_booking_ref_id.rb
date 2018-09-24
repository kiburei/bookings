class RenameColBookingRefId < ActiveRecord::Migration[5.2]
  def change
    rename_column :booking_details, :booking_ref_id, :booking_ref
  end
end
