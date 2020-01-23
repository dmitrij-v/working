class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.belongs_to  :ingredient_category
      t.belongs_to  :recipe
      t.string      :title
      t.string      :full_description
      t.string      :consitency
      t.timestamps
    end
  end
end
