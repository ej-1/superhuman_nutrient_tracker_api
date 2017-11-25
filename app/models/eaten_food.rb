class EatenFood < ApplicationRecord
  belongs_to :user
  has_one :food_type
end
