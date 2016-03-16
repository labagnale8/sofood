class OrderLinesController < ApplicationController
  before_action :authenticate_user!, except: [:create, :update, :destroy]

  def create
    @order = current_order
    @order_line = @order.order_lines.new(order_line_params)
    @order.save
    session[:order_id] = @order.id
    authorize @order_line
    authorize @order
  end

  def update
    @order = current_order
    @order_line = @order.order_lines.find(params[:id])
    @order_line.update_attributes(order_line_params)
    @order_lines = @order.order_lines
    authorize @order_line
    authorize @order
  end

  def destroy
    @order = current_order
    @order_line = @order.order_lines.find(params[:id])
    @order_line.destroy
    @order_lines = @order.order_lines
    authorize @order_line
    authorize @order
  end

private

  def order_line_params
    params.require(:order_line).permit(:quantity, :meal_id)
  end

end
