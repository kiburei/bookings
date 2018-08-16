class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :type
      t.boolean :status
      t.decimal :cost, :precision => 8, :scale => 2
      t.text :details
      t.integer :capacity
      t.integer :beds
      t.integer :baths

      t.timestamps
    end
  end
end
