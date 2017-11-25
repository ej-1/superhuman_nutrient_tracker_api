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
      t.float :monosaccharides
      t.float :disackarides
      t.float :sucrose
      t.float :whole_grains_total
      t.float :sugar_types
      t.float :total_saturated_fatty_acids # mättade fetter
      t.float :fatty_acid # fettsyra
      t.float :lauric_acid # laurinsyra
      t.float :myristic_acid
      t.float :palmitic_acid
      t.float :stearic_acid
      t.float :arakidic_acid
      t.float :total_monosaturated_fatty_acids # enkelmättade fetter
      t.float :palmitolic_acid
      t.float :oleic_acid
      t.float :total_polysaturated_fatty_acids
      t.float :linoleic_acid_c182
      t.float :linoleic_acid_c183
      t.float :arakidonic_acid
      t.float :epa # EPA
      t.float :dpa # DPA
      t.float :dha # DHA
      t.float :cholesterol
      t.float :retinol
      t.float :vitamin_a
      t.float :b_carotene
      t.float :vitamin_d
      t.float :vitamin_e
      t.float :vitamin_k
      t.float :tiamin
      t.float :riboflavin
      t.float :vitamin_c
      t.float :niacin
      t.float :niacin_equivalents
      t.float :vitamin_b6
      t.float :vitamin_b12
      t.float :folate
      t.float :phosphorus
      t.float :iodine # jod
      t.float :iron
      t.float :calcium
      t.float :potassium # kalium
      t.float :copper
      t.float :magnesium
      t.float :sodium # natrium
      t.float :salt
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
      t.float :monosaccharides_rdi_precentage
      t.float :disackarides_rdi_precentage
      t.float :sucrose_rdi_precentage
      t.float :whole_grains_total_rdi_precentage
      t.float :sugar_types_rdi_precentage
      t.float :total_saturated_fatty_acids_rdi_precentage # mättade fetter
      t.float :fatty_acid_rdi_precentage # fettsyra
      t.float :lauric_acid_rdi_precentage # laurinsyra
      t.float :myristic_acid_rdi_precentage
      t.float :palmitic_acid_rdi_precentage
      t.float :stearic_acid_rdi_precentage
      t.float :arakidic_acid_rdi_precentage
      t.float :total_monosaturated_fatty_acids_rdi_precentage # enkelmättade fetter
      t.float :palmitolic_acid_rdi_precentage
      t.float :oleic_acid_rdi_precentage
      t.float :total_polysaturated_fatty_acids_rdi_precentage
      t.float :linoleic_acid_c182_rdi_precentage
      t.float :linoleic_acid_c183_rdi_precentage
      t.float :arakidonic_acid_rdi_precentage
      t.float :epa_rdi_precentage # EPA
      t.float :dpa_rdi_precentage # DPA
      t.float :dha_rdi_precentage # DHA
      t.float :cholesterol_rdi_precentage
      t.float :retinol_rdi_precentage
      t.float :vitamin_a_rdi_precentage
      t.float :b_carotene_rdi_precentage
      t.float :vitamin_d_rdi_precentage
      t.float :vitamin_e_rdi_precentage
      t.float :vitamin_k_rdi_precentage
      t.float :tiamin_rdi_precentage
      t.float :riboflavin_rdi_precentage
      t.float :vitamin_c_rdi_precentage
      t.float :niacin_rdi_precentage
      t.float :niacin_equivalents_rdi_precentage
      t.float :vitamin_b6_rdi_precentage
      t.float :vitamin_b12_rdi_precentage
      t.float :folate_rdi_precentage
      t.float :phosphorus_rdi_precentage
      t.float :iodine_rdi_precentage # jod
      t.float :iron_rdi_precentage
      t.float :calcium_rdi_precentage
      t.float :potassium_rdi_precentage # kalium
      t.float :copper_rdi_precentage
      t.float :magnesium_rdi_precentage
      t.float :sodium_rdi_precentage # natrium
      t.float :salt_rdi_precentage
      t.float :selenium_rdi_precentage
      t.float :zinc_rdi_precentage
      t.float :waste_rdi_precentage # probably don't need this, but we will see.

      t.belongs_to :user, index: true
      t.timestamp :eaten_at

      t.timestamps
    end
  end
end
