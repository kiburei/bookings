class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.integer :transaction_id
      t.decimal :amount_paid, :precision => 8, :scale => 2
      t.string :paid_by
      t.string :paid_by_contact
      t.date :date_paid

      t.timestamps
    end
  end
end
