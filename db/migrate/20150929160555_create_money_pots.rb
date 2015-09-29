class CreateMoneyPots < ActiveRecord::Migration
  def change
    create_table :money_pots do |t|
      t.decimal :value

      t.timestamps null: false
    end
  end
end
