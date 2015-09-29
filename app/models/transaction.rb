class Transaction < ActiveRecord::Base
  belongs_to :money_pot
  belongs_to :user
end
