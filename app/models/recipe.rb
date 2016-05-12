class Recipe < ActiveRecord::Base
  validates_presence_of :name, :ingredients, :instructions
  validates :name, length: { minimum: 2 }
  validates :calories, numericality: { less_than_or_equal_to: 200}
  validates :calories, numericality: true
end
