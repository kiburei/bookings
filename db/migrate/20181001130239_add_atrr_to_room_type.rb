class AddAtrrToRoomType < ActiveRecord::Migration[5.2]
  def change
    add_column :room_types, :charge, :decimal, :precision => 11, :scale => 2
    add_column :room_types, :occupancy, :integer
    add_column :room_types, :beds, :integer
    add_column :room_types, :baths, :integer
    add_column :room_types, :description, :string
  end
end
