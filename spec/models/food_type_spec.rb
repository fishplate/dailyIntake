require "spec_helper"

describe FoodType do
  before(:each) do
    @food_attr = {
       food_name: "test_food",
       protien: 10,
       carbs: 30,
       sugars: 10,
       fat: 2.2,
       calories: 120
    }
  end
  it "should save the record" do
    food = FoodType.new(@food_attr)
    food.save.should == true
  end
end