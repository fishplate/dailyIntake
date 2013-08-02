class FoodType < ActiveRecord::Base
  attr_accessible :food_name, :protien, :carbs, :sugars, :fat, :calories
end
