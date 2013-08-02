require "spec_helper"

describe NutritionCalculator do
  context "claculate result" do
    before(:each) do
      @food_attr = {
       food_name: "test_food",
       protien: 10,
       carbs: 30,
       sugars: 10,
       fat: 2.2,
       calories: 120
      }
      @food = FoodType.create!(@food_attr)
      @nut = NutritionCalculator.new
    end

    it "should calculate values" do
      result = @nut.calculate("test_food", 10)
      result[:protien].should == 100.0
      result[:carbs].should == 300.0
      result[:sugars].should == 100.0
      result[:fat].should == 22.0
      result[:calories].should == 1200.0
    end
  end
end