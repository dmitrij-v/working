class AddHideToRecipe < ActiveRecord::Migration[6.0]
  def up
    add_column :recipes, :public, :boolean

    Recipe.all.each{ |recipe| recipe.update(public: true) }
  end
end
