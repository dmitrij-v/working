class RecipiesController < ApplicationController
  before_action :authenticate_user!

  def show
    @recipe = Recipe.showen.includes(:steps, :ingredients).find_by(id: params[:id])
    return redirect_to :root, alert: "I'm so sorry, but the recipe not found." unless @recipe
  end
end
