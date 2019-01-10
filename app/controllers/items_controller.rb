class ItemsController < ApplicationController

  def index
  end

  def show
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
