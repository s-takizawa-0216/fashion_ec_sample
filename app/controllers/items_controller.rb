class ItemsController < ApplicationController
  
  def index
  end

  def new
    @item = Item.new
    @item.images.build
    @brand = Brand.all
    @shop = Shop.all
    @parent_category = Category.where(depth: 0)
    @child_category = Category.where(depth: 1)

  end

  def create
    @item = Item.new(create_params)
    @item.save
      redirect_to new_item_path
  end

  private

  def create_params
    params.require(:item).permit(:name, :discription, :gender, :price, :material, :origin, :delivery_days, :wrapping, :shop_id, :brand_id, :parent_category_id, :child_category_id, images_attributes: [:image])
  end

end
