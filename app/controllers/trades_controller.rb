class TradesController < ApplicationController

  # POST /trades
  def create
    puts "trade_params.to_h: " + trade_params.to_h.to_s
    @trade = current_user.trades.new(trade_params)

    puts "@trade.inspect: " + @trade.credit.inspect + @trade.debit.inspect

    if @trade.save!
      redirect_back(fallback_location: root_path)
    end
  end

  private
    def trade_params
      params.require(:trade).permit(
          credit_attributes: [:id, :name, :quantity],
          debit_attributes:  [:id, :name, :quantity]
      )
    end
end
