class Meal < ActiveRecord::Base
  has_many :order_lines
  validates_presence_of :name, :price, :photo, :available_quantity
end
