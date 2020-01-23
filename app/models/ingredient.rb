class Ingredient < ApplicationRecord
  belongs_to :ingredient_category
  belongs_to :recipe
end
