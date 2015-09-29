class AddStatusToMoneyPot < ActiveRecord::Migration
  def change
    add_column :money_pots, :isActive, :boolean
  end
end
