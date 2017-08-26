class PagesController < ApplicationController

  # GET /
  def index
    redirect_to portfolio_path if current_user
  end

  def portfolio
    @entry_totals = current_user.entry_totals if current_user
  end
end
