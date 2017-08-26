class PagesController < ApplicationController

  # GET /
  def index
    redirect_to portfolio_path if current_user
  end

  def portfolio
    @entry_totals = current_user.entry_totals if current_user
  end

  def transactions
    @trades = current_user.trades.includes(:debit, :credit)
  end

  def coin_list
    @response = HTTParty.get('https://www.cryptocompare.com/api/data/coinlist/')
  end
end
