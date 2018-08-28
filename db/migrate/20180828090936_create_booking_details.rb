class CreateBookingDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_details do |t|
      t.date :checkin
      t.date :checkout
      t.decimal :amount, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
