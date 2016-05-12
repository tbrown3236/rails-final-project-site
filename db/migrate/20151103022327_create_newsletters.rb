class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :title
      t.string :author
      t.text :content
      t.datetime :publish_date

      t.timestamps null: false
    end
  end
end
