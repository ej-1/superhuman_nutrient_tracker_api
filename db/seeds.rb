user = User.create(first_name: 'Erik', last_name: 'Jonsson',
  email: 'erikjonsson@fakemail.123.com')

daily_profile = user.daily_profiles.create(eaten_at: DateTime.now)

daily_profile.eaten_foods.create(amount: 240, metric_used: 'grams',
  food_type_name: 'Chicken breast', food_type_id: nil)
daily_profile.eaten_foods.create(amount: 300, metric_used: 'grams',
  food_type_name: 'Spinach', food_type_id: nil)
daily_profile.eaten_foods.create(amount: 200, metric_used: 'grams',
  food_type_name: 'Spaghetti', food_type_id: nil)

daily_profile_two = user.daily_profiles.create(eaten_at: DateTime.now)

daily_profile_two.eaten_foods.create(amount: 240, metric_used: 'grams',
  food_type_name: 'Beef', food_type_id: nil)
daily_profile_two.eaten_foods.create(amount: 300, metric_used: 'grams',
  food_type_name: 'Spinach', food_type_id: nil)
daily_profile_two.eaten_foods.create(amount: 300, metric_used: 'grams',
  food_type_name: 'Potatoes', food_type_id: nil)
