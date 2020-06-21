# README

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
<!-- |password_confirm|string|null: false|　←DBで管理する必要あるかな？ -->
|birthday|integer|null: false|
<!-- |family_name_deliver|string|null: false|　←　family_nameから引っ張れないか -->
<!-- |name_deliver|string|null: false|　← nameから引っ張れないか -->
|postal_code|integer|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|address_1|string|null: false|
|address_2|string||

### Association
- has_many :comment
- has_many :item


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
|category_small_id|integer|null: false,foreign_key: true|

### Association
has_many :comment
belong_to :user
belong_to :category_small


## category_bigテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
has_many :category_middle


## category_middleテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|category_big_id|integer|null: false, foreign_key: true|

### Association
has_many :category_small
belong_to :category_big


## category_smallテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|category_middle_id|integer|null: false, foreign_key: true|

### Association
has_many :item
belong_to :category_middle