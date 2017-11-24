# ACTIONS

Foodtypes
- Create
- Read
- Update
- Delete
- List

Eatenfoods
- Create
- Read
- Update
- Delete
- List (by day, week, month)

Users
- Create
- Read
- Update
- Delete
- List (active, suspended)
- Eatenfoods



# ATTRIBUTES

Foodtypes
  id
  energy
  carbohydrates
  fat
  protein
 	fiber
 	water
  alcohol
  ash
  sucrose
  whole_grains_total
  sugar_types
  epa
  dpa
  dha
  retinol
  vitamin_a
  b_carotene
  vitamin_d
  vitamin_e
  vitamin_k
  riboflavin
  vitamin_c
  niacin
  niacin_equivalents
  vitamin_b6
  folate
  phosphorus
  iron
  calcium
  potassium
  magnesium
  sodium
  selenium
  zinc
  waste

Eatenfoods
	id
	food_type_id
	food_type_name (gotten by relationship?)
	user_id
	amount
	weight_metric
	eaten_at

Users
	id
	first_name
	last_name
	email
	api_key
