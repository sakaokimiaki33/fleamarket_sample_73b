# fleamarket_sample_73b DB設計

## userテーブル

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
- has_one :address, dependent: :destroy


## addressテーブル
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


## commentテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|content|text||
|item_id|integer|null: false, foreign_key: true|

### Association
- belong_to :user
- belong_to :item


## itemテーブル

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


## categoryテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|ancestry|integer|index: true|

### Association
has_many :items
has_ancestry