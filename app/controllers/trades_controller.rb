class TradesController < ApplicationController
  before_action :authenticate_user!

  def index
    @open_trade = Trade.where(status: 0, user_id: current_user.id)
    @once_in_cart = Trade.where(status: 1, user_id: current_user.id)
  end

  def edit
  end

  def destroy
  end

  def order
  end

  def confirmation
  end

  def done_transaction
  end

end

