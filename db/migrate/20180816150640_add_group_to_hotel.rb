class AddGroupToHotel < ActiveRecord::Migration[5.2]
  def change
    add_reference :hotels, :group, foreign_key: true
  end
end
