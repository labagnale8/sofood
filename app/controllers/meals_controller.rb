class MealsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  before_action :find_meal, only: [:show]

  def index
    @daily_meals = Meal.where(publication_date: Date.today).limit(3)
  end

  def new
    @meal = Meal.new
  end

  def create
    @user = current_user
    @meal = Meal.new(meal_params)
      @meal = @chief.meals.build(meal_params)

  end
end



  @restroom = Restroom.new(restroom_params)
    @restroom = @user.restrooms.build(restroom_params)
    if @restroom.save
      redirect_to @user
    else
      render :new
    end

private

  def find_meal
    @meal = Meal.find(params[:id])
  end



  def meal_params
    params.require(:meal).permit(:name, :price, :description, :photo, :photo_cache, :available_quantity, :chef_id)
  end
