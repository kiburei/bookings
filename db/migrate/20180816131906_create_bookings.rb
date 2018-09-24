class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :checkin
      t.date :checkout
      t.date :arrival
      t.string :payment_status

      t.timestamps
    end
  end
end
