class DeviseCreateUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :phone, :string
      # 先頭の "0" が表示されない可能性があるため、型を "string" に変更しています。
    change_column :users, :birthday, :date, null: false
      # 日付の形式で保存するため、型を "date" に変更しています。
  end
end
