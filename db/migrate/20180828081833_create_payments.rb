class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.integer :transaction_ref
      t.decimal :amount_paid, :precision => 8, :scale => 2
      t.string :paid_by
      t.string :paid_by_contact
      t.string :payment_mode
      t.date :date_paid

      t.timestamps
    end
  end
end
