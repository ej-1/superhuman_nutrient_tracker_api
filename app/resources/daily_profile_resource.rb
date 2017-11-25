class DailyProfileResource < JSONAPI::Resource
  belongs_to :user
  has_many :eaten_foods

  attributes :eaten_at
  attributes :energy
  attributes :carbohydrates
  attributes :fat
  attributes :protein
  attributes :fiber
  attributes :water
  attributes :alcohol
  attributes :ash
  attributes :sucrose
  attributes :whole_grains_total
  attributes :sugar_types
  attributes :epa
  attributes :dpa
  attributes :dha
  attributes :retinol
  attributes :vitamin_a
  attributes :b_carotene
  attributes :vitamin_d
  attributes :vitamin_e
  attributes :vitamin_k
  attributes :riboflavin
  attributes :vitamin_c
  attributes :niacin
  attributes :niacin_equivalents
  attributes :vitamin_b6
  attributes :folate
  attributes :phosphorus
  attributes :iron
  attributes :calcium
  attributes :potassium
  attributes :magnesium
  attributes :sodium
  attributes :selenium
  attributes :zinc
  attributes :waste

  attributes :energy_rdi_precentage
  attributes :carbohydrates_rdi_precentage
  attributes :fat_rdi_precentage
  attributes :protein_rdi_precentage
  attributes :fiber_rdi_precentage
  attributes :water_rdi_precentage
  attributes :alcohol_rdi_precentage
  attributes :ash_rdi_precentage
  attributes :monosaccharides_rdi_precentage
  attributes :disackarides_rdi_precentage
  attributes :sucrose_rdi_precentage
  attributes :whole_grains_total_rdi_precentage
  attributes :sugar_types_rdi_precentage
  attributes :total_saturated_fatty_acids_rdi_precentage # mättade fetter
  attributes :fatty_acid_rdi_precentage # fettsyra
  attributes :lauric_acid_rdi_precentage # laurinsyra
  attributes :myristic_acid_rdi_precentage
  attributes :palmitic_acid_rdi_precentage
  attributes :stearic_acid_rdi_precentage
  attributes :arakidic_acid_rdi_precentage
  attributes :total_monosaturated_fatty_acids_rdi_precentage # enkelmättade fetter
  attributes :palmitolic_acid_rdi_precentage
  attributes :oleic_acid_rdi_precentage
  attributes :total_polysaturated_fatty_acids_rdi_precentage
  attributes :linoleic_acid_c182_rdi_precentage
  attributes :linoleic_acid_c183_rdi_precentage
  attributes :arakidonic_acid_rdi_precentage
  attributes :epa_rdi_precentage # EPA
  attributes :dpa_rdi_precentage # DPA
  attributes :dha_rdi_precentage # DHA
  attributes :cholesterol_rdi_precentage
  attributes :retinol_rdi_precentage
  attributes :vitamin_a_rdi_precentage
  attributes :b_carotene_rdi_precentage
  attributes :vitamin_d_rdi_precentage
  attributes :vitamin_e_rdi_precentage
  attributes :vitamin_k_rdi_precentage
  attributes :tiamin_rdi_precentage
  attributes :riboflavin_rdi_precentage
  attributes :vitamin_c_rdi_precentage
  attributes :niacin_rdi_precentage
  attributes :niacin_equivalents_rdi_precentage
  attributes :vitamin_b6_rdi_precentage
  attributes :vitamin_b12_rdi_precentage
  attributes :folate_rdi_precentage
  attributes :phosphorus_rdi_precentage
  attributes :iodine_rdi_precentage # jod
  attributes :iron_rdi_precentage
  attributes :calcium_rdi_precentage
  attributes :potassium_rdi_precentage # kalium
  attributes :copper_rdi_precentage
  attributes :magnesium_rdi_precentage
  attributes :sodium_rdi_precentage # natrium
  attributes :salt_rdi_precentage
  attributes :selenium_rdi_precentage
  attributes :zinc_rdi_precentage
  attributes :waste_rdi_precentage # probably don't need this, but we will see.
end
