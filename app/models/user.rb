class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :buyed_items, foreign_key: "buyer_id", class_name: "Item"
  has_many :saling_items, -> { where("buyer_id is NULL") }, foreign_key: "saler_id", class_name: "Item"
  has_many :sold_items, -> { where("buyer_id is not NULL") }, foreign_key: "saler_id", class_name: "Item"

  mount_uploader :user_img, UserImageUploader
  validates :family_name, presence: true
  validates :family_name_kana, presence: true
  validates :name, presence: true
  validates :name_kana, presence: true
  validates :nickname, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :birthday, presence: true

  has_one :address, inverse_of: :user, dependent: :destroy
  accepts_nested_attributes_for :address
    # 親モデルで "accepts_nested_attributes_for :子モデル名" を定義することでフォームから送信した値を親と子のテーブルに同時に保存する。
  # has_many :cards, dependent: :destroy
  # has_many :items, dependent: :destroy
  # has_many :comments, dependent: :destroy
end
