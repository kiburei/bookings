class SantizeHotel < ActiveRecord::Migration[5.2]
  def change
    rename_column :hotels, :id, :hotel_id
  end
end
