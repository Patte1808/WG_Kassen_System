class AddTitleToMoneyPot < ActiveRecord::Migration
  def change
    add_column :money_pots, :title, :string
  end
end
