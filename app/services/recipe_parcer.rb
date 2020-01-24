class RecipeParcer
  def initialize(text)
    @text = text
  end

  def parce
    recipe = create_recipe(parce_recipe)
    create_steps(parce_steps, recipe)
    create_ingredients(parce_ingredients, recipe)

    recipe
  end

  private

  def parce_recipe
    {
      api_id:           @text['id'],
      title:            @text['title'],
      time_for_cooking: @text['readyInMinutes'],
      servings:         @text['servings'],
      instructions:     @text['instructions'],
      image_link:       @text['image'],
      original_source:  @text['sourceUrl']
    }
  end

  def parce_steps
    @text['analyzedInstructions'].map do |big_step|
      big_step['steps'].map do |step|
        {
          number:      step['number'],
          description: step['step']
        }
      end
    end
  end

  def parce_ingredients
    @text['extendedIngredients'].map do |ingredient|
      {
        type:       ingredient['aisle'],
        ingredient: {
          title:            ingredient['name'],
          full_description: ingredient['originalString'],
          consitency:       ingredient['consitency']
        }
      }
    end
  end

  def create_recipe(data_hash)
    old = Recipe.find_by(api_id: data_hash[:api_id])
    return old if old

    Recipe.create(data_hash)
  end

  def create_steps(steps_array, recipe)
    steps_array.flatten.map do |step|
      old_step = recipe.steps.find_by(description: step[:description])
      return old_step if old_step

      recipe.steps.create(step)
    end
  end

  def create_ingredients(ingredients_array, recipe)
    ingredients_array.flatten.map do |ingredient|
      old_ingredient = recipe.ingredients.find_by(title: ingredient[:ingredient][:title])
      return old_ingredient if old_ingredient

      type = IngredientCategory.find_or_create_by(title: ingredient[:type])

      ingredient[:ingredient][:ingredient_category_id] = type.id
      recipe.ingredients.create(ingredient[:ingredient])
    end
  end
end
