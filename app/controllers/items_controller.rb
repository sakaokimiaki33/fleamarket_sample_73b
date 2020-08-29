class ItemsController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show, :pickup]
  before_action :move_to_signin, except: [:index, :edit, :update, :show, :pickup]
  before_action :limit_editer, only: [:edit, :update]
  before_action :set_item, only: [:edit, :update, :show]

  def index
    @items = Item.all.order('id DESC').limit(4)
  end

  def new
    @item = Item.new
    @item.images.new

    @category_parent_array = ["選択してください"]
    Category.where(ancestry: nil).each do |parent|
      @category_parent_array << parent.id
    end
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

  def show
    @item = Item.find(params[:id])
    @category_id = @item.category_id
    @category_parent = Category.find(@category_id).parent.parent
    @category_child = Category.find(@category_id).parent
    @category_grandchild = Category.find(@category_id)
  end

  def edit
    @item = Item.find(params[:id])
    @category_parent_array = ["選択してください"]
    Category.where(ancestry: nil).each do |parent|
      @category_parent_array << parent.id
    end
  end

  def update
    if @item.update(item_update_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    item = Item.find(params[:id])
    if item.saler_id == current_user.id
      item.destroy
      redirect_to root_path
    end
  end

  def pickup
    # @items = Item.all.order('id DESC').limit(4)
    @items = Item.all.page(params[:page]).per(10).order('id DESC').limit(4)
  end 

  def get_category_children
    @category_children = Category.find(params[:parent_id]).children
  end
  
  def get_category_grandchildren
    @category_grandchildren = Category.find(params[:child_id]).children
  end
  
  private
  
  def item_params
    params.require(:item).permit(:name, :price, :product_description, :category_id, :size, :brand, :condition_id, :delivary_charge_id, :sender_id, :shipping_date_id, images_attributes: [:image]).merge(saler_id: current_user.id)
  end

  def item_update_params
    params.require(:item).permit(:name, :price, :product_description, :category_id, :size, :brand, :condition_id, :delivary_charge_id, :sender_id, :shipping_date_id, images_attributes: [:image, :_destroy, :id])
  end

  def move_to_signin
    redirect_to '/users/sign_in' unless user_signed_in?
  end

  def limit_editer
    unless Item.find(params[:id]).saler_id.to_i == current_user.id
      redirect_to root_path
    end
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
