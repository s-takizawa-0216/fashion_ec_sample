class TradesController < ApplicationController
  before_action :authenticate_user!

  def index
    @open_trade = Trade.where(status: 0)
    @once_in_cart = Trade.where(status: 1)
  end

  def order
  end

  def confirmation
  end

  def done_transaction
  end

end

