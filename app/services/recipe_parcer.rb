class RecipeParcer
  def initialize(text)
    @text = text
  end

  def parce
    recipe_hash = {
      api_id:           @text['id'],
      title:            @text['title'],
      time_for_cooking: @text['readyInMinutes'],
      servings:         @text['servings'],
      instructions:     @text['instructions'],
      image_link:       @text['image'],
      original_source:  @text['sourceUrl'],
    }
    steps = @text['analyzedInstructions'].map do |big_step| 
      big_step['steps'].map do |step| 
        { 
          number:       step['number'],
          description:  step['step'],
        }
      end
    end
    ingredients = @text['extendedIngredients'].map do |ingredient|
      {
        type:             ingredient['aisle'],
        title:            ingredient['name'],
        full_description: ingredient['originalString'],
        consitency:       ingredient['consitency'],
      }
    end
    puts ingredients
  end
end
