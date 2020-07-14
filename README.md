# fleamarket_sample_73b DB設計

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_img|string||
|family_name|string|null: false|
|family_name_kana|string|null: false|
|name|string|null: false|
|name_kana|string|null: false|
|nickname|string|null: false|
|gender|string||
|phone|integer||
|email|string|null: false|
|password|string|null: false|
|birthday|integer|null: false|


### Association
- has_many :comments, dependent: :destroy
- has_many :items, dependent: :destroy
- has_many :cards, dependent: :destroy
- has_one :address, dependent: :destroy


## cardsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|customer_id|string|null: false|
|card_id|string|null: false|

### Association
- belong_to :user


## addressesテーブル
|Column|Type|Options|
|------|----|-------|
|family_name_deliver|string|null: false|
|name_deliver|string|null: false|
|postal_code|integer|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|block|string|null: false|
|building|string||
|user_id|integer|null: false, foreign_key: true|

### Association
- belong_to :user


## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|content|text||
|item_id|integer|null: false, foreign_key: true|

### Association
- belong_to :user
- belong_to :item


## itemsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|price|integer|null: false|
|product_description|text|null: false|
|size|string||
|brand|text||
|condition|text|null: false|
|delivary_charge|text|null: false|
|sender|text|null: false|
|shipping_date|string|null: false|
|user_id|integer|null: false, foreign_key: true|
|category_id|integer|null: false,foreign_key: true|

### Association
has_many :comments, dependent: :destroy
belong_to :user
belong_to :category
has_many :images, dependent: :destroy
accepts_nested_attributes_for :images, allow_destroy: true
belongs_to_active_hash


## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|str|string||
|item_id|integer|null: false, foreign_key: true|

### Association
mount_uploader :src, ImageUploader
belongs_to :product


## categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|ancestry|integer|index: true|

### Association
has_many :items
has_ancestry