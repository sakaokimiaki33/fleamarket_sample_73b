class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_item,only: [:show]
  before_action :move_to_signin, except: [:index, :edit, :update]
  before_action :limit_editer, only: [:edit, :update]

  def index
    # redirect_to new_item_path
    @items = Item.all.order('id DESC').limit(4)
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
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_update_params)
    redirect_to root_path
  end

  def destroy
  end

  def pickup
    @items = Item.all.page(params[:page]).per(10).order('id DESC')
  end

  private
  
  def item_params
    params.require(:item).permit(:name, :price, :product_description, :size, :brand, :condition_id, :delivary_charge_id, :sender_id, :shipping_date_id, images_attributes: [:image]).merge(saler_id: current_user.id)
  end

  def item_update_params
    params.require(:item).permit(:name, :price, :product_description, :size, :brand, :condition_id, :delivary_charge_id, :sender_id, :shipping_date_id, images_attributes: [:image, :_destroy, :id])
  end

  def move_to_signin
    redirect_to '/users/sign_in' unless user_signed_in?
  end

  def limit_editer
    unless Item.find(params[:id]).saler_id.to_i == current_user.id
      redirect_to root_path
    end
  end
  
end
