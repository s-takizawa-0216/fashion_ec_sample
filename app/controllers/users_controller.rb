class UsersController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def create
  end

  def show
    user = User.find(params[:id])
    @user = UserDetail.find_by(user_id: user.id)
    @shipping = Shipping.order('created_at': :desc).find_by(user_id: current_user.id)
  end

  def edit
  end

  def update
  end

  def email
  end

  def password_edit
  end

  def address
  end

  private

    def user_detail_parasm
      params.require(:user_detail).permit(:family_name, :first_name, :family_name_kana, :first_name_kana, :refecture, :address1, :address2, :phonenumber).merge(user_id: current_user.id)
    end

end
