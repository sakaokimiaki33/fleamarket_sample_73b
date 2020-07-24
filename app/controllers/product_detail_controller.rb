class ProductDetailController < ApplicationController
  def index
    @items = Item.find(params[:id])
  end
end
