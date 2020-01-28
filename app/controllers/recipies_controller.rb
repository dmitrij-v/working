class RecipiesController < ApplicationController
  before_action :authenticate_user!, except: [:main]

  def show
    @recipe = Recipe.shown.includes(:steps, :ingredients).find_by(id: params[:id])
    return redirect_to :root, alert: "I'm so sorry, but the recipe not found." unless @recipe
  end
end
