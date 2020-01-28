class Recipe < ApplicationRecord
  has_many :steps, foreign_key: 'recipe_id', class_name: 'RecipeStep'
  has_many :ingredients
  has_many :translations

  accepts_nested_attributes_for "steps"

  scope :shown, -> { where(public: true) }
  scope :hidden, -> { where(public: false) }
end
