class RenameColumnInBookigDetails < ActiveRecord::Migration[5.2]
  def change
    rename_column :booking_details, :booking_detail_id, :detail_id
  end
end
