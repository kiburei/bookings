class RenameUserId < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :id, :user_id
  end
end
