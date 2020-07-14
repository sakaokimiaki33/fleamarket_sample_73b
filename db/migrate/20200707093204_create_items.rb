class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.text :product_description, null: false
      t.string :size
      t.text :brand
      t.integer :condition_id, null: false
      t.integer :delivary_charge_id, null: false
      t.integer :sender_id, null: false
      t.integer :shipping_date_id, null: false
      # t.references :user_id, null: false, foreign_key: true
      # t.references :category_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end

#カテゴリテーブル作成時にコメントアウト削除