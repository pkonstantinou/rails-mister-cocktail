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

Cocktail.create(name: 'Vodka martini', image_url: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/vodka-martini-recipe-d7e9995.jpg?quality=90&webp=true&resize=440,400')
Cocktail.create(name: 'Espresso martini', image_url: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/espresso-martini-f099531.jpg?quality=90&webp=true&resize=440,400')
Cocktail.create(name: 'Pink negroni', image_url: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/classic-negroni-dfc0ca9.jpg?quality=90&webp=true&resize=440,400')
Cocktail.create(name: 'Sweet manhattan cocktail', image_url: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/manhattan-cocktail-4d775c9.jpg?quality=90&webp=true&resize=440,400')
Cocktail.create(name: 'Mango & pineapple mojito', image_url: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/mango-and-pineapple-mojito-15b1c1a.jpg?quality=90&webp=true&resize=440,400')
Cocktail.create(name: 'Frozen margarita', image_url: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/frozen-margarita-e3ddfe9.jpg?quality=90&webp=true&resize=440,400')
