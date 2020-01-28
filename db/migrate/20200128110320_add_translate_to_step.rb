class AddTranslateToStep < ActiveRecord::Migration[6.0]
  def change
    add_column :recipe_steps, :translation, :string
    add_column :ingredients, :translation, :string
  end
end
