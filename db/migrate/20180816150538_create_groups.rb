class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :address
      t.string :location

      t.timestamps
    end
  end
end
