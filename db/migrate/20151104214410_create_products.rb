class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :quantity
      t.integer :sell_price
      t.integer :cost_of_product
      t.integer :shipping_weight
      t.string :thumbnail
      t.string :picture

      t.timestamps null: false
    end
  end
end
