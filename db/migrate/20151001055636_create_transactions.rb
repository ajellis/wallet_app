class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :type
      t.string :receiver
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
