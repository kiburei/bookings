class RemoveColumnsFromRoom < ActiveRecord::Migration[5.2]
  def change
  	remove_column :rooms, :cost
  	remove_column :rooms, :details
  	remove_column :rooms, :capacity
  	remove_column :rooms, :beds
  	remove_column :rooms, :baths
  end
end
