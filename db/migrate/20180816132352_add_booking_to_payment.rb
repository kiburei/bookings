class AddBookingToPayment < ActiveRecord::Migration[5.2]
  def change
    add_reference :payments, :booking, foreign_key: true
  end
end
