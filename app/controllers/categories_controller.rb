class CategoriesController < ApplicationController

  # def index
  #   @parents = Category.where(ancestry: nil)
  #   @items = Item.all
  # end

  # def show
  #   @items = @category.set_items
  #   @items = @items.where(buyer_id: nil).order("created_at DESC").page(params[:page]).per(9)
  # end

  # def new
  #   @children = Category.find(params[:parent_id]).children
  #   respond_to do |format|
  #     format.html
  #     format.json
  #   end
  # end

  # private
  # def set_category
  #   @category = Category.find(params[:id])

  # end
end