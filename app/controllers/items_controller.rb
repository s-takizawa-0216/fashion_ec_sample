class ItemsController < ApplicationController

  before_action :check_stocks, only: [:show]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :check_shop_user, only: [:new]

  def index
    @zozo = Item.order("created_at DESC").limit(3)
    @coupon_item = Item.where.not(coupon: 1).order("created_at DESC").limit(3)
    @coupon_other_item = Item.where.not(coupon: 1).order("created_at DESC").offset(3).take(4)
    @rank1 = Item.order('impressions_count DESC').take(1)
    @rank2 = Item.order('impressions_count DESC').offset(1).take(1)
    @rank3 = Item.order('impressions_count DESC').offset(2).take(1)
    @number1 = [*1..3].take(1)
    @number2 = [*2..3].take(1)
    @number3 = [*3..3].take(1)
    @other_most_viewd = Item.order('impressions_count DESC').offset(3).take(20)
    @number4_23 = [*4..23]

    @brand_rank1 = Brand.offset(0).take(1)
    @brand_rank2 = Brand.offset(1).take(1)
    @brand_rank3 = Brand.offset(2).take(1)
    @brand_other_rank = Brand.offset(3).take(17)
    @brand_other_number_4_20 = [*4..20]

    @shop_rank1 = Shop.offset(0).take(1)
    @shop_rank2 = Shop.offset(1).take(1)
    @shop_rank3 = Shop.offset(2).take(1)
    @shop_other_rank = Shop.offset(3).take(17)
    @shop_other_number_4_20 = [*4..20]

    @user = User.find(user_id)

    @rank1_shop = Shop.order('impressions_count DESC').take(1)

    @favorite_shops = FavShop.where(user_id:current_user.id)

  end

  def show
    @item = Item.find(params[:id])
    @arigatoPrice = (@item.price * 0.7).round
    @item_image_line = @item.images
    @trade = Trade.new
    @popular_item = Item.find(params[:id])
    impressionist(@popular_item, nil, :unique => [:session_hash])
    @stock = Stock.where(item_id: @item)
    @user = User.find(user_id)
    @items = cookies[:recently_viewed_items].split(",").reverse unless cookies[:recently_viewed_items].nil?
    @favorite_shops = FavShop.where(user_id:current_user.id)
  end

  def new
    # 選択欄での必要項目の取得
    @brand = Brand.all
    @shop = Shop.where(user_id: current_user.id)
    @parent_category = Category.where(depth: 0)
    @color = Color.all
    # アイテムの生成
    @item = Item.new
    @item.images.build
  end

  def create
    # アイテムのDBへの保存
    @item = Item.new(create_params)
    if @item.save
      redirect_to stocks_path
    else
      redirect_to new_item_path
    end
  end

  def search_category
    # 商品出品ページのカテゴリー選択ajax通信
    respond_to do |format|
        format.json {render 'new', json: @child_category = Category.where(parent_id: params[:parent_id])}
    end
  end

  def ranking
    @rank1 = Item.order('impressions_count DESC').take(1)
    @rank2 = Item.order('impressions_count DESC').offset(1).take(1)
    @rank3 = Item.order('impressions_count DESC').offset(2).take(1)
    @number1 = [*1..3].take(1)
    @number2 = [*2..3].take(1)
    @number3 = [*3..3].take(1)
    @other_most_viewd = Item.order('impressions_count DESC').offset(3).take(17)
    @number4_20 = [*4..20]
  end



  private

    def create_params
      params.require(:item).permit(:name, :discription, :gender, :price, :material, :origin, :delivery_days, :wrapping, :shop_id, :brand_id, :parent_category_id, :child_category_id, :coupon, images_attributes: [:image, :color_id , :discription])
    end

    def check_shop_user
      # 商品出品ページに進む際、current_userがショップ登録をしているか確認
      unless current_user.shop.present?
        redirect_to root_path
      end
    end

    def check_stocks
      @item = Item.find(params[:id])
      redirect_to root_path unless @item.stocks.present?
    end

end
