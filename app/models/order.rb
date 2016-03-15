class Order < ActiveRecord::Base
  belongs_to :user
  has_many :order_lines

  validates_presence_of :address_line_1, :zip_code, :city, :country, :first_name, :last_name, :phone_number
end
