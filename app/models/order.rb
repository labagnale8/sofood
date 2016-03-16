class Order < ActiveRecord::Base
  belongs_to :user
  has_many :order_lines

  validates_presence_of :address_line_1, :zip_code, :city, :country, :first_name, :last_name, :phone_number

  before_create :set_order_status
  before_save :update_subtotal

  def subtotal
    order_lines.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end

private

  def set_order_status
    self.order_status_id = 1
  end

  def update_subtotal
    self[:subtotal] = subtotal
  end

end
