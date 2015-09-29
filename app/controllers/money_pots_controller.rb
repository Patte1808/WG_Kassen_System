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

  def show
    @money_pot = get_current_money_pot
    @transaction = Transaction.new
    @transactions = @money_pot.transactions.order("created_at DESC")
    @transactions_value = @transactions.sum(:value)
  end

  def edit
    @money_pot = get_current_money_pot
  end

  def update
    money_pot = get_current_money_pot
    money_pot.update!(money_pot_params)

    redirect_to money_pot
  end

  private
  def money_pot_params
    params.require(:money_pot).permit(:title, :value)
  end

  def get_current_money_pot
    MoneyPot.find(params[:id])
  end
end
