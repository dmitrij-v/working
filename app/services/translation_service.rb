class TranslationService
  def initialize(recipe)
    @recipe = recipe
  end

  def send_request
    steps = @recipe.steps.map{ |step| step.description }.join(' === ')
    ingredients = @recipe.ingredients.map{ |ingredient| ingredient.full_description }.join(' --- ')

    full_text = "#{steps} ||| #{ingredients}"

    uri = URI.parse(ENV['TRANSLATION_ADRESS'])
    uri.query = URI.encode_www_form({
      source: 'en',
      q: full_text,
      target: 'ru'
    })
    req = Net::HTTP::Post.new(uri)
    req['x-rapidapi-host'] = ENV['X_RAPIDAPI_HOST_TRANSLATE']  
    req['x-rapidapi-key'] = ENV['X_RAPIDAPI_KEY']
    req['content-type'] = 'application/x-www-form-urlencoded'
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    response = http.request(req)

    out_string = JSON.parse(response.body)
    out_string = out_string["data"]["translations"][0]["translatedText"].split('|||')
    translation_steps = out_string[0].split('===')
    translation_ingredients = out_string[1].split('---')

    @recipe.steps.each{ |step| step.update(translation: translation_steps.shift) }
    @recipe.ingredients.each{ |step| step.update(translation: translation_ingredients.shift) }
  end
end
