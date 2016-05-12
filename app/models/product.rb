class Product < ActiveRecord::Base
  has_many :comments
  validates_presence_of :name, :description, :quantity, :sell_price, :cost_of_product, :shipping_weight, :thumbnail, :picture
  validates :name, length: { minimum: 2 }
  validates :quantity, :sell_price, :cost_of_product, :shipping_weight, numericality: { less_than_or_equal_to: 20000}
  validates :quantity, :sell_price, :cost_of_product, :shipping_weight, numericality: true
end
