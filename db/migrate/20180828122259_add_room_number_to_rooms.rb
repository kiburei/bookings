class AddRoomNumberToRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :room_number, :string
  end
end
