require 'open-uri'
require 'json'

results = JSON.parse(open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)

results['drinks'].each do |ingredient|
  Ingredient.new(name: ingredient["strIngredient1"]).save
end

Cocktail.create(name: "Sex on the beach", image_url: "https://unsplash.com/photos/fXkmfjaowOw")
Cocktail.create(name: "Mojito", image_url:"https://unsplash.com/photos/pb7oJwtNVU4")
Cocktail.create(name: "White Russian", image_url:"https://unsplash.com/photos/btOgwJQvu28")
