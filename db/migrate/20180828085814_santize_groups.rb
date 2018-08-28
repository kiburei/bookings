class SantizeGroups < ActiveRecord::Migration[5.2]
  def change
    rename_column :groups, :id, :group_id
  end
end
