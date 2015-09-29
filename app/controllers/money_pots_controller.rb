class MoneyPotsController < ApplicationController
  def index
    @money_pots = MoneyPot.where(isActive: true).order("created_at ASC")
  end

  def new
    @money_pot = MoneyPot.new
  end

  def create
    @money_pot = MoneyPot.new(money_pot_params)

    if @money_pot.save
      redirect_to @money_pot
    else
      flash.now[:error] = "Could not save money pot"
      render action: "new"
    end
  end

  private
  def money_pot_params
    params.require(:money_pot).permit(:title, :value)
  end
end
