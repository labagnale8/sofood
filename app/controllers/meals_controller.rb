class MealsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_meal, only: [:show, :edit, :update]

  def index
    @daily_meals = policy_scope(Meal.where(publication_date: Date.today).limit(4))
    @order_line = policy_scope(current_order.order_lines.new)

  end

  def show

  end


  def new
    @meal = Meal.new
    authorize @meal
  end

  def create
    @user = current_user
    @meal = @user.meals.build(meal_params)
    authorize @meal

    if @meal.save
      redirect_to meals_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @user = current_user
    @meal.update(meal_params)
      redirect_to meals_path

  end




private

  def find_meal
    @meal = Meal.find(params[:id])
    authorize @meal
  end



  def meal_params
    params.require(:meal).permit(:name, :price, :description, :photo, :photo_cache, :available_quantity, :publication_date, :chief_id, :user_id)
  end

end
