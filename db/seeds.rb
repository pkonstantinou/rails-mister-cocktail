require 'open-uri'
require 'json'

API_URL = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'.freeze

data_serialized = open(API_URL).read
data = JSON.parse(data_serialized)

def pick_an_ingredient(data)
  data['drinks'].sample['strIngredient1']
end

20.times do
  Ingredient.create(name: pick_an_ingredient(data))
end

# BASE_URL = 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08'.freeze

# cocktails = [{ name: 'Espresso martini',
#                url: "#{BASE_URL}/vodka-martini-recipe-d7e9995.jpg?quality=90&webp=true&resize=440,400" },
#              { name: 'Pink negroni',
#                url: "#{BASE_URL}/classic-negroni-dfc0ca9.jpg?quality=90&webp=true&resize=440,400" },
#              { name: 'Sweet manhattan cocktail',
#                url: "#{BASE_URL}/manhattan-cocktail-4d775c9.jpg?quality=90&webp=true&resize=440,400" },
#              { name: 'Mango & pineapple mojito',
#                url: "#{BASE_URL}/mango-and-pineapple-mojito-15b1c1a.jpg?quality=90&webp=true&resize=440,400" },
#              { name: 'Frozen margarita',
#                url: "#{BASE_URL}/frozen-margarita-e3ddfe9.jpg?quality=90&webp=true&resize=440,400" },
#              { name: 'Zombie cocktail',
#                url: "#{BASE_URL}/zombie-a2ad1e2.jpg?quality=90&webp=true&resize=440,400" }]

# cocktails.each do |cocktail|
#   filename = cocktail[:name].downcase.split(' ').join('_')
#   file = URI.open(cocktail[:url])
#   cocktail = Cocktail.new(name: cocktail[:name])
#   cocktail.photo.attach(io: file, filename: filename, content_type: 'image/png')
#   cocktail.save
# end
