class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_item,only: [:show]

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    @tax_in_price = @products.price * 1.1
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(
      :name, 
      :price, 
      :product_description, 
      :size,
      :bland,
      :condition,
      :delivary_charge,
      :sender,
      :shipping_date,
      :images_id,
      :category_id,
      :buyer,
    ).merge(
      user_id: current_user.id, 
      # saler:current_user.id,
      # buyer:current_user.id
    )
  end

end
