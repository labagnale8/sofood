class OrderLine < ActiveRecord::Base
  belongs_to :order
  belongs_to :meal
  validates :quantity, :numericality => { :greater_than => 1 }, :presence => true
  validates_presence_of :total_line_price
end
