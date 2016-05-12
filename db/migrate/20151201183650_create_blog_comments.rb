class CreateBlogComments < ActiveRecord::Migration
  def change
    create_table :blog_comments do |t|
      t.string :title
      t.string :author
      t.text :content
      t.datetime :published_date
      t.integer :rating
      t.references :blog, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
