class Item < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user
  # belong_to :category
  # belongs_to :brand, dependent: :destroy, optional: true

  # validates_associated :images
  # validates :name, :price, :prefecture_id, :category_id, :description, :user_id, presence: true
  # validates :images, presence: true, on: :update

  mount_uploader :image, ImagesUploader
end
