class PagesController < ApplicationController

  # GET /
  def index
    @trade = Trade.new(
      credit: Entry.new(credit: true), 
      debit:  Entry.new(credit: false)
    )    
  end

  def portfolio
    @entry_totals = current_user.entry_totals if current_user
  end

  def transactions
    @trades = current_user.trades.includes(:debit, :credit)
  end
end
