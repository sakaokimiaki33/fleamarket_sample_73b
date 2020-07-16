class Item < ApplicationRecord
  # has_many :comments, dependent: :destroy
  # belongs_to :user
  # belongs_to :category
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :condition
  belongs_to_active_hash :delivary_charge
  belongs_to_active_hash :sender
  belongs_to_active_hash :shipping_date
  # belongs_to :saler, class_name: "User"
  # belongs_to :buyer, class_name: "User"
  # User 差分上がってきたときに。

  validates :name, :price, :product_description, presence: true
  validates :condition_id, :delivary_charge_id, :sender_id, :shipping_date_id, numericality: { greater_than: 0 }
  # validates :category_id, presence: true

end