class CreateFoodTypes < ActiveRecord::Migration
  def change
    create_table :food_types do |t|
      t.string :food_name
      t.float :protien
      t.float :carbs
      t.float :sugars
      t.float :fat
      t.float :calories
      t.timestamps
    end
  end
end
