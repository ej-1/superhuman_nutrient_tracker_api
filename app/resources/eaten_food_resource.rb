class EatenFoodResource < JSONAPI::Resource
  attributes :amount
  belongs_to :user
  filter :user # whats this?
end
