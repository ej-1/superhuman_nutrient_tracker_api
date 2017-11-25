class CreateFoodTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :food_types do |t|
 		t.string :name
		t.float :energy
		t.float :carbohydrates
		t.float :fat
		t.float :protein
		t.float :fiber
		t.float :water
		t.float :alcohol
		t.float :ash
		t.float :sucrose
		t.float :whole_grains_total
		t.float :sugar_types
		t.float :epa
		t.float :dpa
		t.float :dha
		t.float :retinol
		t.float :vitamin_a
		t.float :b_carotene
		t.float :vitamin_d
		t.float :vitamin_e
		t.float :vitamin_k
		t.float :riboflavin
		t.float :vitamin_c
		t.float :niacin
		t.float :niacin_equivalents
		t.float :vitamin_b6
		t.float :folate
		t.float :phosphorus
		t.float :iron
		t.float :calcium
		t.float :potassium
		t.float :magnesium
		t.float :sodium
		t.float :selenium
		t.float :zinc
		t.float :waste

      t.timestamps
    end
  end
end
