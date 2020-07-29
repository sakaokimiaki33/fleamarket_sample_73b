class PurchaseController < ApplicationController
  before_action :set_cards,only: [:index, :pay]
  require 'payjp'

  def index
    #itemsテーブルから値を直接指定して引っ張ってきている
    @item = Item.find(2)
    image = params[:image]
    @address = Address.find(2)
    card = cards.first
    #テーブルからpayjpの顧客IDを検索し変数化して取得
    if card.present?
      #登録された情報がない場合にカード登録画面に移動
      redirect_to controller: "card", action: "new"
    else
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      #保管した顧客IDでpayjpから情報取得
      customer = Payjp::Customer.retrieve(card.customer_id)
      #保管したカードIDでpayjpから情報取得、カード情報表示のためインスタンス変数に代入
      @default_card_information = customer.cards.retrieve(card.card_id)
    end
  end

  def pay
    @item = Item.find(2)
    price = @item.price*1.1
    card = cards.first
    Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
    Payjp::Charge.create(
    :amount => price.truncate, #支払金額を入力（itemテーブル等に紐づけるべき?）
    :customer => card.customer_id, #顧客ID
    :currency => 'jpy', #日本円
  )
  
  @item = Item.find(2)
  @item.buyer += 1
  if @item.save
    redirect_to action: 'done' #完了画面に移動
  else
    redirect_to action: 'index'
  end

  def done
    @item= Item.find(params[:id])
    @item.update( buyer: current_user.id)
  end

  def set_cards
    cards = Card.where(user_id: current_user.id)
  end


end
