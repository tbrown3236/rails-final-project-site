class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first, :string
    add_column :users, :last, :string
    add_column :users, :newsletter, :boolean, default: false
  end
end
