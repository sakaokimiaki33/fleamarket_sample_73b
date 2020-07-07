class Item < ApplicationRecord
  has_many :comments, dependent: :destroy
  belong_to :user
  belong_to :category
  has_many :images, dependent: :destroy
end
