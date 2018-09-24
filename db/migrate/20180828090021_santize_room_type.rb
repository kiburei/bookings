class SantizeRoomType < ActiveRecord::Migration[5.2]
  def change
    rename_column :room_types, :id, :room_type_id
  end
end
