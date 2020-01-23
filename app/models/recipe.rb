class Recipe < ApplicationRecord
  has_many :steps, foreign_key: "recipe_id", class_name: "RecipeStep"
  has_many :ingredients
end
