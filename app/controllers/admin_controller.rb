class AdminController < ApplicationController
  before_action :authenticate_user!

  def recipe_index
    return redirect_to :root unless current_user.admin?
    @recipies = Recipe.all
  end
end
