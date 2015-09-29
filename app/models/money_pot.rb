class MoneyPot < ActiveRecord::Base
  has_many :transactions, dependent: :destroy
  accepts_nested_attributes_for :transactions
end
