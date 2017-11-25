class EatenFoodResource < JSONAPI::Resource
  attributes :amount
  attributes :metric_used
  attributes :eaten_at

  belongs_to :daily_profile
  has_one :food_type
  filter :user # whats this?
end
