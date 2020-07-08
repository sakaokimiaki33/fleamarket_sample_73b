class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :user_img, UserImageUploader
  validates :family_name, presence: true
  validates :family_name_kana, presence: true
  validates :name, presence: true
  validates :name_kana, presence: true
  validates :nickname, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 7 }
  validates :birthday, presence: true

  # belongs_to :address, dependent: :destroy
  # has_many :cards, dependent: :destroy
  # has_many :items, dependent: :destroy
  # has_many :comments, dependent: :destroy
end
