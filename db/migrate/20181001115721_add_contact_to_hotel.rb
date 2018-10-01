class AddContactToHotel < ActiveRecord::Migration[5.2]
  def change
  	add_column :hotels, :contact, :string
  end
end
