class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :author
      t.string :title
      t.text :content
      t.datetime :published_date

      t.timestamps null: false
    end
  end
end
