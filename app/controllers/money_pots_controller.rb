class MoneyPotsController < ApplicationController
  def index
    @money_pots = MoneyPot.where(isActive: true).order("created_at ASC")
  end
end
