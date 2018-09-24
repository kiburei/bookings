class SantizeRole < ActiveRecord::Migration[5.2]
  def change
    rename_column :roles, :id, :role_id
  end
end
