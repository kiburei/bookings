class SantizePayments < ActiveRecord::Migration[5.2]
  def change
    remove_column :payments, :transaction_ref
    rename_column :payments, :id, :transaction_ref
  end
end
