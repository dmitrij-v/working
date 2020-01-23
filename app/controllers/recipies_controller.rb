class RecipiesController < ApplicationController
  before_action :authenticate_user!

  def show
    @recipe = Recipe.find_by(id: params[:id])
    return redirect_to :root, alert: "I'm soo sorry, but recipe not found." unless @recipe
  end
end
