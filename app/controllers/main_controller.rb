class MainController < ApplicationController
  before_action :authenticate_user!, :except => [:main]

  def main
    @recipies = Recipe.last(10)
  end
end
