require 'open-uri'
require 'json'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

response = open(url).read
data = JSON.parse(response)

data["drinks"].sample(10).each do |h|
  ingredient_name = h["strIngredient1"]
  Ingredient.create(name: ingredient_name)
end
