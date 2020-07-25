class Image < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :item, foreign_key: true
end
