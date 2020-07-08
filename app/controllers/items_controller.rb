class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @items = Item.all
  end

  def show
    @items = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:image)
  end
end
