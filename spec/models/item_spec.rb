require 'rails_helper'
describe Item do
  describe '#create' do
    it "全ての項目に値が入力されている場合、登録できる。" do
      item = build(:item)
      expect(item).to be_valid
    end

    it "nameがない場合は登録できないこと" do
      item = build(:item, name: nil) 
      item.valid?
      expect(item.errors[:name]).to include("を入力してください")
    end

    it "priceがない場合は登録できないこと" do
      item = build(:item, price: nil) 
      item.valid?
      expect(item.errors[:price]).to include("を入力してください")
    end

    it "product_descriptionがない場合は登録できないこと" do
      item = build(:item, product_description: nil) 
      item.valid?
      expect(item.errors[:product_description]).to include("を入力してください")
    end

    it "sizeが無くても登録できること" do
      item = build(:item, size: nil) 
      expect(item).to be_valid
    end

    it "brandが無くても登録できること" do
      item = build(:item, brand: nil) 
      expect(item).to be_valid
    end

    it "condition_idがない場合は登録できないこと" do
      item = build(:item, condition_id: nil) 
      item.valid?
      expect(item.errors[:condition_id]).to include("を選択してください")
    end

    it "delivary_charge_idがない場合は登録できないこと" do
      item = build(:item, delivary_charge_id: nil) 
      item.valid?
      expect(item.errors[:delivary_charge_id]).to include("を選択してください")
    end

    it "sender_idがない場合は登録できないこと" do
      item = build(:item, sender_id: nil) 
      item.valid?
      expect(item.errors[:sender_id]).to include("を選択してください")
    end

    it "shipping_date_idがない場合は登録できないこと" do
      item = build(:item, shipping_date_id: nil) 
      item.valid?
      expect(item.errors[:shipping_date_id]).to include("を選択してください")
    end
  end
end