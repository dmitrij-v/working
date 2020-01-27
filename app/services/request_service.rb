class RequestService
  require 'net/http'
  require 'json'
  def initialize; end

  def recipe
    # its work/ Don't toch now!
    # uri = URI.parse('https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/informationBulk')
    # params = { :ids => "612235,646368,96500" }
    # uri.query = URI.encode_www_form(params)
    # req = Net::HTTP::Get.new(uri)
    # req['x-rapidapi-host'] = 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com'
    # req['x-rapidapi-key'] = 'b14720ae09msh92bfb8ca8ce34fdp1e1f52jsne73dfd1bd03e'
    # http = Net::HTTP.new(uri.host, uri.port)
    # http.use_ssl = true
    # response = http.request(req)
    # parce = JSON.parse(response.body)

    uri = URI.parse('http://localhost:3002/recipe')
    req = Net::HTTP::Get.new(uri)
    http = Net::HTTP.new(uri.host, uri.port)
    response = http.request(req)
    parce = JSON.parse(response.body)
    RecipeParcer.new(parce).parce
  end

  def day_menu
    uri = URI.parse('http://localhost:3002/day')
    req = Net::HTTP::Get.new(uri)
    http = Net::HTTP.new(uri.host, uri.port)
    response = http.request(req)
    parce = JSON.parse(response.body)
    parce.map { |recipe| RecipeParcer.new(recipe).parce }
  end

  def day_list
    uri = URI.parse('http://localhost:3002/day_list')
    req = Net::HTTP::Get.new(uri)
    http = Net::HTTP.new(uri.host, uri.port)
    response = http.request(req)
    parce = JSON.parse(response.body)
    MenuParcer.new(parce).parce
  end

  def full_parce_daily_menu
    response = send_request(
      'https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/mealplans/generate',
      timeFrame:      'day',
      targetCalories: 2000
    )
    list = MenuParcer.new(response).parce.join(',')
    response = send_request(
      'https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/informationBulk',
      ids: list
    )
    response.map { |recipe| RecipeParcer.new(recipe).parce }
  end

  def send_request(url, params = nil)
    uri = URI.parse(url)
    uri.query = URI.encode_www_form(params)
    req = Net::HTTP::Get.new(uri)
    req['x-rapidapi-host'] = ENV['X_RAPIDAPI_HOST']
    req['x-rapidapi-key'] = ENV['X_RAPIDAPI_KEY']
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    response = http.request(req)

    JSON.parse(response.body)
  end
end
