require 'rails_helper'
describe Address do
  describe '#create' do
    it "全ての項目に値が入力されている場合、登録できる。" do
      user = build(:user)
      user_address = build(:address)
      expect(user_address).to be_valid
    end

    it "配送先 氏名（姓）が未入力の場合は、登録できない。" do
      user = build(:address, family_name_deliver: "")
      user.valid?
      expect(user.errors[:family_name_deliver]).to include("を入力してください")
    end

    it "配送先 氏名（名）が未入力の場合は、登録できない。" do
      user = build(:address, name_deliver: "")
      user.valid?
      expect(user.errors[:name_deliver]).to include("を入力してください")
    end

    it "郵便番号が未入力の場合は、登録できない。" do
      user = build(:address, postal_code: "")
      user.valid?
      expect(user.errors[:postal_code]).to include("を入力してください")
    end

    it "住所（都道府県）が選択されていない場合は、登録できない。" do
      user = build(:address, prefecture: "")
      user.valid?
      expect(user.errors[:prefecture]).to include("を入力してください")
    end

    it "住所（市区町村）が選択されていない場合は、登録できない。" do
      user = build(:address, city: "")
      user.valid?
      expect(user.errors[:city]).to include("を入力してください")
    end

    it "住所が未入力の場合は、登録できない。" do
      user = build(:address, block: "")
      user.valid?
      expect(user.errors[:block]).to include("を入力してください")
    end

    it "建物名・マンション名を入力しなくても、登録できる。" do
      user = build(:user)
      user_address = build(:address, building: "")
      expect(user).to be_valid
    end
  end
end