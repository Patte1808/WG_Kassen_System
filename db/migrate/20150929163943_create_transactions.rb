class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :comment
      t.decimal :value
      t.belongs_to :money_pot, index:true
      t.timestamps null: false
    end
  end
end
