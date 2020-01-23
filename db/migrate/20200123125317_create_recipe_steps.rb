class CreateRecipeSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_steps do |t|
      t.integer     :number
      t.string      :description
      t.belongs_to  :recipe
      t.timestamps
    end
  end
end
