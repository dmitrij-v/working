module AdminHelper
  def show_status(recipe)
    return 'Shown' if recipe.public

    'Hidden'
  end

  def create_public_link(recipe)
    return link_to 'Hide', switch_public_admin_recipe_path(recipe), method: 'post' if recipe.public

    link_to 'Show', switch_public_admin_recipe_path(recipe), method: 'post'
  end
end
