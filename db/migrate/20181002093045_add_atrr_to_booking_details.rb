class AddAtrrToBookingDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :booking_details, :name, :string
    add_column :booking_details, :email, :string
    add_column :booking_details, :occupancy, :integer
  end
end
