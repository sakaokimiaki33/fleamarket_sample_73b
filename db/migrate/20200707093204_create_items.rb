class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.text :product_description
      t.string :size
      t.text :brand
      t.integer :condition_id
      t.integer :delivary_charge_id
      t.integer :sender_id
      t.integer :shipping_date_id
      t.integer :saler_id
      t.integer :buyer_id
      # t.references :category_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end

#カテゴリテーブル作成時にコメントアウト削除