class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :check_user_detail, only: [:edit]

  def new
    @user_detail =UserDetail.new
  end

  def create_info
    @user_detail =UserDetail.new(user_detail_params)
    if @user_detail.save
      redirect_to user_path(current_user.id)
    else
      redirect_to new_user_path
    end
  end

  def show
    user = User.find(params[:id])
    @user = UserDetail.find_by(user_id: user.id)
    @shipping = Shipping.order('created_at': :desc).find_by(user_id: current_user.id)
  end

  def check_user_detail
    user = UserDetail.find_by(user_id: current_user.id)
    unless user.present?
      redirect_to user_path
    end
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

    def user_detail_params
      params.require(:user_detail).permit(:family_name, :first_name, :family_name_kana, :first_name_kana, :prefecture, :address1, :address2, :phonenumber, :gender, :birth_year, :birth_month, :birth_day, :postal_code).merge(user_id: current_user.id)
    end

end
