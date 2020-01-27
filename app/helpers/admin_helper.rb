module AdminHelper
  def show_status(recipe)
    return 'Shown' if recipe.public
    'Hidden'
  end
end
