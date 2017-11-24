class UserResource < JSONAPI::Resource
  attributes :first_name
  attributes :last_name
  attributes :email
  attributes :api_key

  has_many :eaten_foods
end
