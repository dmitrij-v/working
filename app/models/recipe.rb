class Recipe < ApplicationRecord
  has_many :steps, foreign_key: 'recipe_id', class_name: 'RecipeStep'
  has_many :ingredients

  scope :showen, -> { where(public: true) }
  scope :hidden, -> { where(public: false) }
end
