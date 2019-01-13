class UsersController < ApplicationController
  before_action: authenticate_user!

  def show
    user = User.find(params[:id])
  end

  def edit
  end

  def email
  end

  def password_edit
  end

  def address
  end

  private


end
