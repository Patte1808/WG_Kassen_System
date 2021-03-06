class TransactionsController < ApplicationController
  before_action :authenticate_user!

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.money_pot_id = params[:money_pot_id]
    @transaction.user_id = current_user.id
    @money_pot = get_current_money_pot

    if @transaction.save
      redirect_to @money_pot
    else
      flash.now[:error] = "Could not save money pot"
      render action: "new"
    end
  end

  private
  def transaction_params
    params.require(:transaction).permit(:comment, :value, :user_id)
  end

  def get_current_money_pot
    MoneyPot.find(params[:money_pot_id])
  end

end
