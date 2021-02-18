require 'open-uri'
require 'json'

API_URL = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

data_serialized = open(API_URL).read
data = JSON.parse(data_serialized)

def pick_an_ingredient(data)
  data['drinks'].sample['strIngredient1']
end

10.times do
  Ingredient.create(name: pick_an_ingredient(data))
end
