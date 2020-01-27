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

  def edit_recipe
    @recipe = Recipe.includes(:steps, :ingredients).find_by(id: params[:id])
  end

  def update_recipe
    recipe = Recipe.find(params[:id])
    recipe.update(title: params[:recipe][:title])
    recipe.steps.each do |step|
      hash = params[:recipe][:steps_attributes].values.map{ |temp| temp if temp['id'] == step.id.to_s}.compact.first
      puts ''
      puts hash
      puts ''
      if hash
        hash.delete('id') 
        step.update(hash)
      end
    end
    redirect_to :show_admin_recipe
  end
end
