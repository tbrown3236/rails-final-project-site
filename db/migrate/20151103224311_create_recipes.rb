class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :creator
      t.text :ingredients
      t.text :instructions
      t.string :thumbnail
      t.string :picture
      t.datetime :last_cooked

      t.timestamps null: false
    end
  end
end
