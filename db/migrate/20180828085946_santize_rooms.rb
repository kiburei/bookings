class SantizeRooms < ActiveRecord::Migration[5.2]
  def change
    rename_column :rooms, :id, :room_id
  end
end
