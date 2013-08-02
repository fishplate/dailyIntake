class NutritionCalculator

  def calculate(food_type, quantity)
    return unless food_type && quantity
    food = find_food(food_type)
    if food
      result = calculate_food(food, quantity)
    end
    result
  end

private

  def find_food(food_type)
    return unless food_type
    food_record = FoodType.find_by_food_name(food_type)
    if food_record
      food_hash = {} 
      food_hash[:protien] = food_record.protien
      food_hash[:carbs] = food_record.carbs
      food_hash[:sugars] = food_record.sugars
      food_hash[:fat] = food_record.fat
      food_hash[:calories] = food_record.calories
      return food_hash
    else
      return nil
    end
  end

  def calculate_food(food, quantity)
    return unless food && quantity
    totals = {}
    food.each_pair do |key, val|
      totals[key] = val * quantity
    end
    totals
  end
end