class ProductDetailController < ApplicationController
  def index
    @item = Item.find(1)
    # これは仮置きで、全ての機能が実装できたら選んだものを引っ張ってくるように書き換える必要があります。
  end
end
