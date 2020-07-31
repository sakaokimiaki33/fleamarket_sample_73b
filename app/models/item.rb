class Item < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user

  # validates_associated :images
  validates :name, :price, :product_description, :size, :brand, :condition, :delivary_charge, :sender, :saler, :buyer, :image, :shipping_date, :category_id, :user_id, presence: true
  # validates :images, presence: true, on: :update

  mount_uploader :image, ImagesUploader
end
