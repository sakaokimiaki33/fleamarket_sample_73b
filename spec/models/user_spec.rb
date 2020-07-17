require 'rails_helper'
describe User do
  describe '#create' do
    it "全ての項目に値が入力されている場合、登録できる。" do
      user = build(:user)
      expect(user).to be_valid
    end

    it "プロフィール画像をアップロードしなくても、登録できる。" do
      user = build(:user, user_img: "")
      expect(user).to be_valid
    end

    it "氏名（姓）が未入力の場合は、登録できない。" do
      user = build(:user, family_name: "")
      user.valid?
      expect(user.errors[:family_name]).to include("を入力してください")
    end

    it "氏名（名）が未入力の場合は、登録できない。" do
      user = build(:user, name: "")
      user.valid?
      expect(user.errors[:name]).to include("を入力してください")
    end

    it "氏名（フリガナ・姓）が未入力の場合は、登録できない。" do
      user = build(:user, family_name_kana: "")
      user.valid?
      expect(user.errors[:family_name_kana]).to include("を入力してください")
    end

    it "氏名（フリガナ・名）が未入力の場合は、登録できない。" do
      user = build(:user, name_kana: "")
      user.valid?
      expect(user.errors[:name_kana]).to include("を入力してください")
    end

    it "ニックネームが未入力の場合は、登録できない。" do
      user = build(:user, nickname: "")
      user.valid?
      expect(user.errors[:nickname]).to include("を入力してください")
    end

    it "既に登録されているニックネームの場合は、登録できない。" do
      user_01 = create(:user)
      user_02 = build(:user, nickname: "Suzuki")
      user_02.valid?
      expect(user_02.errors[:nickname]).to include("はすでに存在します")
    end

    it "性別を選択しなくても、登録できる。" do
      user = build(:user, gender: "")
      expect(user).to be_valid
    end

    it "電話番号を入力しなくても、登録できる。" do
      user = build(:user, phone: "")
      expect(user).to be_valid
    end

    it "メールアドレスが未入力の場合は、登録できない。" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end

    it "既に登録されているメールアドレスの場合は、登録できない。" do
      user_01 = create(:user)
      user_02 = build(:user, email: "Sato@gmail.com")
      user_02.valid?
      expect(user_02.errors[:email]).to include("はすでに存在します")
    end

    it "パスワードが未入力の場合は、登録できない。" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end

    it "パスワードの文字数が 6文字以下の場合は、登録できない。" do
      user = build(:user, password: "123456", password_confirmation: "123456")
      user.valid?
      expect(user.errors[:password]).to include("は7文字以上で入力してください")
    end

    it "パスワード（確認用）が未入力の場合は、登録できない。" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("とPasswordの入力が一致しません")
    end

    it "確認用のパスワードが一致しない場合は、登録できない。" do
      user = build(:user, password_confirmation: "12345678")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("とPasswordの入力が一致しません")
    end

    it "誕生日が未入力の場合は、登録できない。" do
      user = build(:user, birthday: "")
      user.valid?
      expect(user.errors[:birthday]).to include("を入力してください")
    end
  end
end