class MainController < ApplicationController
  before_action :authenticate_user!, :except => [:main]

  def main
    @last_recipes = Recipe.last(10)
  end
end
