class MainsController < ApplicationController

  def create
    food_type = params[:food_type].to_s
    quantity = params[:quantity].to_i
    if food_type && quantity
      nutrition_client.calulate(food_type, quantity)
    end
  end


private

  def nutrition_client
    @nut ||= NutritionCalculator.new
  end
end
