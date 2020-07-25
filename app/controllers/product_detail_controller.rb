class ProductDetailController < ApplicationController
  def index
    @item = Item.find(1)
  end
end
