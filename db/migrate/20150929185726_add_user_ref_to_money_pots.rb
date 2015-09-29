class AddUserRefToMoneyPots < ActiveRecord::Migration
  def change
    add_reference :money_pots, :user, index: true, foreign_key: true
  end
end
