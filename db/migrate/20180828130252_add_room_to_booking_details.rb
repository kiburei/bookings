class AddRoomToBookingDetails < ActiveRecord::Migration[5.2]
  def change
    add_reference :booking_details, :rooms.room_id, index: true, foreign_key: true
  end
end
