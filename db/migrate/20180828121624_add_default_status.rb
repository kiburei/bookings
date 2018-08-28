class AddDefaultStatus < ActiveRecord::Migration[5.2]
  def change
    change_column :rooms, :status, :string, :default => "Vacant"
  end
end
