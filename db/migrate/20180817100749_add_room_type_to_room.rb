class AddRoomTypeToRoom < ActiveRecord::Migration[5.2]
  def change
    add_reference :rooms, :room_type, foreign_key: true
  end
end
