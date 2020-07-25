class Image < ApplicationRecord
  mount_uploader :src, ImageUploader
  belongs_to :item, foreign_key: true
end
