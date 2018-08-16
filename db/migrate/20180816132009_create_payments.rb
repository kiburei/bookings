class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.decimal :amount, :precision => 8, :scale => 2
      t.string :payment_mode
      t.date :date_paid
      t.string :paid_by
      t.string :paid_by_contact

      t.timestamps
    end
  end
end
