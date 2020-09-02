# fleamarket_sample_73b DB設計
# HELLO WORLD
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

## ユーザー管理機能 詳細

### ユーザー 新規登録フォーム

<img src="https://user-images.githubusercontent.com/63486456/91237920-cece3880-e776-11ea-9ff7-6c4b91184036.png" width="50%">

- [application_controller.rb](https://github.com/sakaokimiaki33/fleamarket_sample_73b/blob/master/app/controllers/application_controller.rb)：Devise を使用したフォームから送信された値を保存するための記述をする。 

```Ruby
class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
    # Devise でメールアドレスとパスワード以外の値を受け取る為にストロングパラメータ（ "configure_permitted_parameters" メソッド）を設定する。

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:カラム名, :子モデル名_attributes => [:カラム名]])
      # Devise の User モデルの新規登録フォームでメールアドレスとパスワード以外で受け取るカラム名を記述する。
      # ":子モデル名_attributes => [:カラム名]" で子モデルで受け取るためのカラム名を記述する。
  end
end
```

- [new.html.haml](https://github.com/sakaokimiaki33/fleamarket_sample_73b/blob/master/app/views/devise/registrations/new.html.haml)：Devise を使用した新規登録フォーム。

```Ruby
= form_for(resource, as: resource_name, url: registration_path(resource_name)) do |f|
  # Devise で作成したモデルへ送信するためのフォームの宛先です。
  = form.fields_for :子モデル名, @親モデルを格納するインスタンス変数.build_小モデル名 do |f|
    # フォームを送信したモデル以外に複数のモデルに値を送信する場合は、フォームヘルパー `.fields_for` を使用する。
```

#### RSpec を使用したユーザー登録機能のテスト結果

<img src="https://user-images.githubusercontent.com/63486456/91240100-02f82800-e77c-11ea-91e9-f66e7e5cf7b3.png" width="50%">

### 既存ユーザー ログインフォーム

<img src="https://user-images.githubusercontent.com/63486456/91237918-cd047500-e776-11ea-9f13-1b5c2974942a.png" width="50%">

- [new.html.haml](https://github.com/sakaokimiaki33/fleamarket_sample_73b/blob/master/app/views/devise/sessions/new.html.haml)：Devise を使用したログインフォーム。
