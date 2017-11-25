Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  jsonapi_resources :users
  jsonapi_resources :eaten_foods
  jsonapi_resources :food_types
  jsonapi_resources :daily_profiles
end
