class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :number
      t.string :address
      t.string :email
      t.references :food_item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
