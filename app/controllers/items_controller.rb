class ItemsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    redirect_to '/items/new'
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
      @item.images.new
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
    params.require(:item).permit(:name, :price, :product_description, :size, :brand, :condition_id, :delivary_charge_id, :sender_id, :shipping_date_id, images_attributes: [:image]).merge(saler_id: current_user.id)
  end

  def move_to_index
    redirect_to '/users/sign_in' unless user_signed_in?
  end
  
end