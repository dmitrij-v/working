class RecipeStep < ApplicationRecord
  belongs_to :recipe
  default_scope { order(number: :asc) }
end
