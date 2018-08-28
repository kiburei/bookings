class RemoveHotelFromRoomType < ActiveRecord::Migration[5.2]
  def change
    remove_column :room_types, :hotel_id
  end
end
