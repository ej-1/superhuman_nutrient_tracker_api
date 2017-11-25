class CreateDailyProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :daily_profiles do |t|
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

      t.float :energy_rdi_precentage
      t.float :carbohydrates_rdi_precentage
      t.float :fat_rdi_precentage
      t.float :protein_rdi_precentage
      t.float :fiber_rdi_precentage
      t.float :water_rdi_precentage
      t.float :alcohol_rdi_precentage
      t.float :ash_rdi_precentage
      t.float :sucrose_rdi_precentage
      t.float :whole_grains_total
      t.float :sugar_types_rdi_precentage
      t.float :epa_rdi_precentage
      t.float :dpa_rdi_precentage
      t.float :dha_rdi_precentage
      t.float :retinol_rdi_precentage
      t.float :vitamin_a_rdi_precentage
      t.float :b_carotene_rdi_precentage
      t.float :vitamin_d_rdi_precentage
      t.float :vitamin_e_rdi_precentage
      t.float :vitamin_k_rdi_precentage
      t.float :riboflavin_rdi_precentage
      t.float :vitamin_c_rdi_precentage
      t.float :niacin_rdi_precentage
      t.float :niacin_equivalents_rdi_precentage
      t.float :vitamin_b6_rdi_precentage
      t.float :folate_rdi_precentage
      t.float :phosphorus_rdi_precentage
      t.float :iron_rdi_precentage
      t.float :calcium_rdi_precentage
      t.float :potassium_rdi_precentage
      t.float :magnesium_rdi_precentage
      t.float :sodium_rdi_precentage
      t.float :selenium_rdi_precentage
      t.float :zinc_rdi_precentage
      t.float :waste_rdi_precentage # probably don't need this, but we will see.

      t.timestamp :eaten_at

      t.timestamps
    end
  end
end
