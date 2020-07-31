class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_item,only: [:show]
  before_action :move_to_signin, except: :index

  def index
    redirect_to new_item_path
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

  def move_to_signin
    redirect_to '/users/sign_in' unless user_signed_in?
  end
  
end
