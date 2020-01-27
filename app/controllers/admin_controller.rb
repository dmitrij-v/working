class AdminController < ApplicationController
  before_action :authenticate_user!

  def recipe_index
    return redirect_to :root unless current_user.admin?

    @recipies = Recipe.all
  end

  def show_recipe
    @recipe = Recipe.includes(:steps, :ingredients).find_by(id: params[:id])
    return redirect_to :show_admin_recipe_index_path, alert: "I'm so sorry, but the recipe not found." unless @recipe
  end

  def switch_public
    recipe = Recipe.find(params[:id])
    recipe.update(public: !recipe.public)
    redirect_to :show_admin_recipe
  end
end
