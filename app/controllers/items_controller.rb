class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @items = Item.all
  end

  def show
    @items = Item.find(params[:id])
    @tax_in_price = @products.price * 1.1
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
    ).merge(
      user_id: current_user.id, 
    )
  end
end
