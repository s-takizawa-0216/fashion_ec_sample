class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :check_user_detail_edit, only: [:edit]
  before_action :check_user_detail_new, only: [:new]

  def new
    # 基本情報登録画面
    @user_detail =UserDetail.new
  end

  def create_info
    # 新規基本情報のDBへの追加
    @user_detail =UserDetail.new(user_detail_params)
    if @user_detail.save
      redirect_to user_path(current_user.id)
    else
      redirect_to new_user_path
    end
  end

  def show
    # ユーザーマイページ
    user = User.find(params[:id])
    @user = UserDetail.find_by(user_id: user.id)
    @shipping = Shipping.order('created_at': :desc).find_by(user_id: current_user.id)
  end

  def edit
    # 基本情報編集画面
    @user_detail = UserDetail.find_by(user_id: current_user.id)
  end

  def update_info
    # 基本情報編集のDBへの追加
    @user_detail = UserDetail.find_by(user_id: current_user.id)
    @user_detail.update(update_user_detail_params)
    if @user_detail.save
      redirect_to user_path(current_user.id)
    else
      redirect_to edit_user_path
    end
  end

  def email
    # メーリアドレスの変更
    @user = User.find(params[:user_id])
  end

  def update_email
    # メールアドレスの変更をDBに保存
    @user = User.find(params[:user_id])
    @user.update_columns(email: "#{params[:user]["email"]}")
  end

  def password_edit
  end

  def address
  end

  private

    def user_detail_params
      params.require(:user_detail).permit(:family_name, :first_name, :family_name_kana, :first_name_kana, :prefecture, :address1, :address2, :phonenumber, :gender, :birth_year, :birth_month, :birth_day, :postal_code).merge(user_id: current_user.id)
    end

    def update_user_detail_params
      params.require(:user_detail).permit(:family_name, :first_name, :family_name_kana, :first_name_kana, :prefecture, :address1, :address2, :phonenumber, :gender, :birth_year, :birth_month, :birth_day, :postal_code)
    end

    def check_user_detail_new
      # 基本情報登録済みユーザーは登録面面への遷移ができない
      user = UserDetail.find_by(user_id: current_user.id)
      if user.present?
        redirect_to user_path(current_user.id)
      end
    end

    def check_user_detail_edit
      # 基本情報未登録ユーザーは編集面面への遷移ができない
      user = UserDetail.find_by(user_id: current_user.id)
      unless user.present?
        redirect_to user_path
      end
    end

end
