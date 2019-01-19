class ItemsController < ApplicationController

  def index
    @zozo = Item.order("created_at DESC").limit(3)
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

    @user = User.find(user_id)
  end

  def show
    @item = Item.find(params[:id])
    @popular_item = Item.find(params[:id])
    impressionist(@popular_item, nil, :unique => [:session_hash])
    @stock = Stock.where(item_id: @item)
    @user = User.find(user_id)
  end

  def new
    @item = Item.new
    @item.images.build
    @brand = Brand.all
    @shop = Shop.all
    @parent_category = Category.where(depth: 0)
    @tops_category = Category.where(parent_id: 1)
    @jackets_category = Category.where(parent_id: 5)
    @pants_category = Category.where(parent_id: 9)
  end

  def create
    @item = Item.new(create_params)
    if @item.save
      redirect_to root_path
    else
      redirect_to new_item_path
    end
  end

  def cart
  end

  def prefecture
  end

  private

  def create_params
    params.require(:item).permit(:name, :discription, :gender, :price, :material, :origin, :delivery_days, :wrapping, :shop_id, :brand_id, :parent_category_id, :child_category_id, images_attributes: [:image])
  end

end
