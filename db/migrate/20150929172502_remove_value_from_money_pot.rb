class RemoveValueFromMoneyPot < ActiveRecord::Migration
  def change
    remove_column :money_pots, :value, :decimal
  end
end
