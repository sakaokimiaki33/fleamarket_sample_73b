class Address < ApplicationRecord
  validates :family_name_deliver, presence: true
  validates :name_deliver, presence: true
  validates :postal_code, presence: true
  validates :prefecture, presence: true
  validates :city, presence: true
  validates :block, presence: true
end