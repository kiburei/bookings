class SanitizeBooingDetail < ActiveRecord::Migration[5.2]
  def change
    rename_column :booking_details, :id, :booking_detail_id
  end
end
