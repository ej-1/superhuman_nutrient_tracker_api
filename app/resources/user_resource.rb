class UserResource < JSONAPI::Resource
  attributes :first_name
  has_many :eaten_foods
end
