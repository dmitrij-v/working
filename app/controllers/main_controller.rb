class MainController < ApplicationController
  before_action :authenticate_user!, except: [:main]

  def main
    @recipies = Recipe.showen.last(10).reverse
  end
end
