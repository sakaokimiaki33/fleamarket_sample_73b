class Item < ApplicationRecord
  # has_many :comments, dependent: :destroy
  # belongs_to :user
  belongs_to :category
  
  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :condition
  belongs_to_active_hash :delivary_charge
  belongs_to_active_hash :sender
  belongs_to_active_hash :shipping_date
  belongs_to :saler, class_name: "User", optional: true
  belongs_to :buyer, class_name: "User", optional: true
  

  validates :images, presence: { message: 'は１枚以上登録してください' }
  validates :name, :price, :product_description, presence: true
  validates :condition_id, :delivary_charge_id, :sender_id, :shipping_date_id, numericality: { greater_than: 0, message: "を選択してください" }
  # validates :category_id, presence: true

end
