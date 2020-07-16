class ItemsController < ApplicationController
  def index
    @items = Item.includes(:images).order('created_at DESC')
  end

  def new
    @item = Item.new
    @item.images.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  
  def item_params
    params.require(:item).permit(:name, :price, :product_description, :size, :brand, :condition_id, :delivary_charge_id, :sender_id, :shipping_date_id, images_attributes: [:src])
    # 後日、".merge(seller_id: current_user.id)"を追記
  end
end