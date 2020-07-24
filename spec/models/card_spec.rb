require 'rails_helper'
describe Card do
  describe '#new' do
    it "カード番号がない場合は登録できないこと" do
      card = Card.new(card_id: nil, customer_id: "cus_6ebacd05dd66d4ba0593ef4c20ad")
     card.valid?
     expect(card.errors[:card_id]).to include("can't be blank")
    end

  describe '#new' do
  it "顧客番号がない場合は登録できないこと" do
    card = Card.new(card_id: "car_7da7052d5576fcf16271163ad6ef", customer_id: nil)
   card.valid?
   expect(card.errors[:customer_id]).to include("can't be blank")
  end
end
    
  describe '#new' do
  it "ユーザー情報がない場合は登録できないこと" do
    card = Card.new(user_id: nil,card_id: "car_7da7052d5576fcf16271163ad6ef", customer_id: "cus_6ebacd05dd66d4ba0593ef4c20ad")
   card.valid?
   expect(card.errors[:user_id]).to include("can't be blank")
  end
end

  describe '#new' do
  it "ユーザー情報、カード番号、顧客番号がある場合は登録できること" do
    card = Card.new(user_id:"2" ,card_id: "car_7da7052d5576fcf16271163ad6ef", customer_id: "cus_6ebacd05dd66d4ba0593ef4c20ad")
    card = build(:card)
  end
end

  end
end
