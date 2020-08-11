class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_item,only: [:show]
  before_action :move_to_signin, except: :index

  def index
    # redirect_to new_item_path
    @items = Item.all.order('id DESC').limit(4)
  end

  def new
    @item = Item.new
    @item.images.new

    @category_parent_array = ["選択してください"]
    Category.where(ancestry: nil).each do |parent|
      @category_parent_array << parent.name
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

  def edit
  end

  def update
  end

  def destroy
  end

  def get_category_children
    @category_children = Category.find_by(id: "#{params[:parent_name]}", ancestry: nil).children
    
    # binding.pry
  end
  
  def get_category_grandchildren
    @category_grandchildren = Category.find("#{params[:child_id]}").children
  end

  private
  
  def item_params
    params.require(:item).permit(:name, :price, :product_description, :category_id, :size, :brand, :condition_id, :delivary_charge_id, :sender_id, :shipping_date_id, images_attributes: [:image]).merge(saler_id: current_user.id)
  end

  def move_to_signin
    redirect_to '/users/sign_in' unless user_signed_in?
  end

end