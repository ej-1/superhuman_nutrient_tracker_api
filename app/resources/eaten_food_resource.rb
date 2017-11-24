class EatenFoodResource < JSONAPI::Resource
  attributes :amount
  attributes :metric_used
  attributes :eaten_at

  belongs_to :user
  filter :user # whats this?
end
