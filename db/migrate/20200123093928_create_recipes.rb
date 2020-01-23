class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string      :title
      t.integer     :api_id
      t.integer     :time_for_cooking
      t.integer     :servings
      t.string      :instructions
      t.string      :image_link
      t.string      :original_source
      t.timestamps
    end
  end
end
