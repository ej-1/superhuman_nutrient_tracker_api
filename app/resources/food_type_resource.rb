class FoodTypeResource < JSONAPI::Resource
  attributes :name
  attributes :energy
  attributes :carbohydrates
  attributes :fat
  attributes :protein
  attributes :fiber
  attributes :water
  attributes :alcohol
  attributes :ash
  attributes :monosaccharides
  attributes :disackarides
  attributes :sucrose
  attributes :whole_grains_total
  attributes :sugar_types
  attributes :total_saturated_fatty_acids # mättade fetter
  attributes :fatty_acid # fettsyra
  attributes :lauric_acid # laurinsyra
  attributes :myristic_acid
  attributes :palmitic_acid
  attributes :stearic_acid
  attributes :arakidic_acid
  attributes :total_monosaturated_fatty_acids # enkelmättade fetter
  attributes :palmitolic_acid
  attributes :oleic_acid
  attributes :total_polysaturated_fatty_acids
  attributes :linoleic_acid_c182
  attributes :linoleic_acid_c183
  attributes :arakidonic_acid
  attributes :epa # EPA
  attributes :dpa # DPA
  attributes :dha # DHA
  attributes :cholesterol
  attributes :retinol
  attributes :vitamin_a
  attributes :b_carotene
  attributes :vitamin_d
  attributes :vitamin_e
  attributes :vitamin_k
  attributes :tiamin
  attributes :riboflavin
  attributes :vitamin_c
  attributes :niacin
  attributes :niacin_equivalents
  attributes :vitamin_b6
  attributes :vitamin_b12
  attributes :folate
  attributes :phosphorus
  attributes :iodine # jod
  attributes :iron
  attributes :calcium
  attributes :potassium # kalium
  attributes :copper
  attributes :magnesium
  attributes :sodium # natrium
  attributes :salt
  attributes :selenium
  attributes :zinc
  attributes :waste

  filter :eaten_food # whats this?
end
