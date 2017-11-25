class EatenFood < ApplicationRecord
  belongs_to :daily_profile
  has_one :food_type
end
