class MainController < ApplicationController
  before_action :authenticate_user!, except: [:main]

  def main
    @recipies = Recipe.shown.last(10).reverse
  end
end
