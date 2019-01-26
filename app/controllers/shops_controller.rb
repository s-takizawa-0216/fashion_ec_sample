class ShopsController < ApplicationController

  def index
    @alphabet =('a'..'z').to_a
    @shopsA = Shop.where("name LIKE?","a%")
    @shopsB = Shop.where("name LIKE?","b%")
    @shopsC = Shop.where("name LIKE?","c%")
    @shopsD = Shop.where("name LIKE?","d%")
    @shopsE = Shop.where("name LIKE?","e%")
    @shopsF = Shop.where("name LIKE?","f%")
    @shopsG = Shop.where("name LIKE?","g%")
    @shopsH = Shop.where("name LIKE?","h%")
    @shopsI = Shop.where("name LIKE?","i%")
    @shopsJ = Shop.where("name LIKE?","j%")
    @shopsK = Shop.where("name LIKE?","k%")
    @shopsL = Shop.where("name LIKE?","l%")
    @shopsM = Shop.where("name LIKE?","m%")
    @shopsN = Shop.where("name LIKE?","n%")
    @shopsO = Shop.where("name LIKE?","o%")
    @shopsP = Shop.where("name LIKE?","p%")
    @shopsQ = Shop.where("name LIKE?","q%")
    @shopsR = Shop.where("name LIKE?","r%")
    @shopsS = Shop.where("name LIKE?","s%")
    @shopsT = Shop.where("name LIKE?","t%")
    @shopsU = Shop.where("name LIKE?","u%")
    @shopsV = Shop.where("name LIKE?","v%")
    @shopsW = Shop.where("name LIKE?","w%")
    @shopsX = Shop.where("name LIKE?","x%")
    @shopsY = Shop.where("name LIKE?","y%")
    @shopsZ = Shop.where("name LIKE?","z%")
    @favorite_shops = FavShop.where(user_id:current_user.id)
  end

  def new
    @shop = Shop.new
  end

  def show
    @shop = Shop.find(params[:id])
    @category = Item.where(shop_id: @shop).pluck(:parent_category_id)
    @items = Item.where(shop_id: @shop)
    @popular_item = Shop.find(params[:id])
    @shops = FavShop.where(shop_id: @shop , user_id: current_user.id)
    impressionist(@popular_item, nil, :unique => [:session_hash])
    @favorite_shops = FavShop.where(user_id:current_user.id)
  end

  def create
    shop = Shop.new(shop_params)
    if shop.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def shop_params
    params.require(:shop).permit(:name).merge(user_id: current_user.id)
  end
end
