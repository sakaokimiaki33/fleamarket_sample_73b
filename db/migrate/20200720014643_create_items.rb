class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      t.timestamps
      t.string :name,              null: false
      t.integer :price,            null: false
      t.text :product_description, null: false
      t.string :size
      t.text :brand
      t.text :condition,           null: false
      t.text :delivary_charge,     null: false
      t.text :sender,              null: false
      t.string :shipping_date,     null: false
      t.integer :user_id,          null: false, foreign_key: true
      t.integer :category_id,      null: false, foreign_key: true

    end
  end
end