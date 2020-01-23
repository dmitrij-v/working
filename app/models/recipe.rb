class Recipe < ApplicationRecord
  has_many :steps, foreign_key: "recipe_id", class_name: "RecipeStep"
end
