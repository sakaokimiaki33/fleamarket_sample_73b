# fleamarket_sample_73b DB設計

## データベース（MySQL）設計

### items
| カラム名 | 型 | オプション |
----|----|----
| name | string |  |
| brand | text |  |
| size | string |  |
| condition_id | integer | NOT NULL 制約 |
| price | integer |  |
| delivary_charge_id | integer | NOT NULL 制約 |
| sender_id | integer | NOT NULL 制約 |
| shipping_date_id | integer | NOT NULL 制約 |
| product_description | text | NOT NULL 制約 |
| saler_id | integer |  |
| buyer_id | integer |  |
| category_id | bigint | 外部キー制約 |

#### Association

- belongs_to :category
- belongs_to :saler, class_name: "User", optional: true
- belongs_to :buyer, class_name: "User", optional: true

- has_many :images, dependent: :destroy
  - accepts_nested_attributes_for :images, allow_destroy: true

- belongs_to_active_hash :condition
- belongs_to_active_hash :delivary_charge
- belongs_to_active_hash :sender
- belongs_to_active_hash :shipping_date

### categories

| カラム名 | 型 | オプション |
----|----|----
| name | string | NOT NULL 制約 |
| ancestry | string |

#### Association

- has_many :items
- has_ancestry

### images
| カラム名 | 型 | オプション |
----|----|----
| image | string |
| item_id | bigint | 外部キー制約 |

#### Association

- belongs_to :item

### users

| カラム名 | 型 | オプション |
----|----|----
| user_img | string |
| email | string | NOT NULL 制約，一意性制約 |
| password | string | NOT NULL 制約 |
| family_name | string | NOT NULL 制約 |
| family_name_kana | string | NOT NULL 制約 |
| name | string | NOT NULL 制約 |
| name_kana | string | NOT NULL 制約 |
| nickname | string | NOT NULL 制約 |
| gender | string |
| phone | string |
| birthday | date | NOT NULL 制約 |

#### Association

- has_one :address, inverse_of: :user, dependent: :destroy
  - accepts_nested_attributes_for :address
- has_many :items, dependent: :destroy
- has_many :buyed_items, foreign_key: "buyer_id", class_name: "Item"
- has_many :saling_items, -> { where("buyer_id is NULL") }, foreign_key: "saler_id", class_name: "Item"
- has_many :sold_items, -> { where("buyer_id is not NULL") }, foreign_key: "saler_id", class_name: "Item"

### addresses

| カラム名 | 型 | オプション |
----|----|----
| family_name_deliver | string | NOT NULL 制約 |
| name_deliver | string | NOT NULL 制約 |
| postal_code | integer | NOT NULL 制約 |
| prefecture | string | NOT NULL 制約 |
| city | string | NOT NULL 制約 |
| block | string | NOT NULL 制約 |
| building | string | NOT NULL 制約 |
| user_id | bigint | 外部キー制約 |

#### Association

- belongs_to :user, inverse_of: :address

### cards

| カラム名 | 型 | オプション |
----|----|----
| user_id | integer | NOT NULL 制約 |
| customer_id | string | NOT NULL 制約 |
| card_id | string | NOT NULL 制約 |

#### Association

- belongs_to :user
