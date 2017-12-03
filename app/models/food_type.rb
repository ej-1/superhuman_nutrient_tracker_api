require './lib/database_loader'

class FoodType < ApplicationRecord

  def self.save_foodtypes_to_database
    foodtypes = DatabaseLoader.new.parse_file_into_objects
    foodtypes.each do |foodtype|
      Foodtype.new(foodtype).save
    end
  end
end
