class OrderLinesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :new, :create, :edit, :update]


  def create
  end

  def update
  end
end
