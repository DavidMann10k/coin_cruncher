class TradesController < ApplicationController

  def new
    @trade = Trade.new(
      credit: Entry.new(credit: true), 
      debit:  Entry.new(credit: false)
    )
  end

  # POST /trades
  def create
    @trade = current_user.trades.new(trade_params)

    if @trade.save
      flash[:notice] = "Transaction successfully created"
      redirect_back(fallback_location: root_path)
    else
      flash[:alert] = @trade.errors.full_messages
      redirect_back(fallback_location: root_path)
    end
  end

  def index
    @trades = current_user.trades.includes(:debit, :credit)
  end

  private
    def trade_params
      params.require(:trade).permit(
          credit_attributes: [:id, :name, :quantity],
          debit_attributes:  [:id, :name, :quantity]
      )
    end
end
