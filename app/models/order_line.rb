class OrderLine < ActiveRecord::Base
  belongs_to :order
  belongs_to :meal
end
