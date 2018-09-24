class AddAttributesToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :booking_ref, :string
    add_column :bookings, :booking_date, :date
    add_column :bookings, :amount, :decimal, :precision => 8, :scale => 2
  end
end
