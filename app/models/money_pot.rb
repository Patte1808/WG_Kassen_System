class MoneyPot < ActiveRecord::Base
  has_many :transactions, dependent: :destroy
  belongs_to :user
  accepts_nested_attributes_for :transactions
end
