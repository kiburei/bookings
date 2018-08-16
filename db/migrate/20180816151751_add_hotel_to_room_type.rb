class AddHotelToRoomType < ActiveRecord::Migration[5.2]
  def change
    add_reference :room_types, :hotel, foreign_key: true
  end
end
