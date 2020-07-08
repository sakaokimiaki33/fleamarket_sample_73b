class Item < ApplicationRecord
  has_many :comments, dependent: :destroy
  # belong_to :user
  # belong_to :category

  mount_uploader :image, ImagesUploader
end
