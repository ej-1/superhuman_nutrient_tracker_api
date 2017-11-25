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

  has_one :eaten_food
  filter :eaten_food # whats this?
end
