class CartsController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  def show
    @order_lines = current_order.order_lines
    authorize @order_lines
  end

end
