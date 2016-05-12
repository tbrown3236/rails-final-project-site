class AddAvatarImageToBlogComments < ActiveRecord::Migration
  def change
    add_column :blog_comments, :avatar_image, :string
  end
end
