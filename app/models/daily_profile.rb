class DailyProfile < ApplicationRecord
  belongs_to :user
  has_many :eaten_foods
end
