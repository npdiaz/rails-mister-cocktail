require 'open-uri'
require 'json'

results = JSON.parse(open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)

results['drinks'].each do |ingredient|
  Ingredient.new(name: ingredient["strIngredient1"]).save
end

Cocktail.create(name: "Sex on the beach")
Cocktail.create(name: "Mojito")
Cocktail.create(name: "White Russian")
