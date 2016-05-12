json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :name, :creator, :ingredients, :instructions, :thumbnail, :picture, :last_cooked
  json.url recipe_url(recipe, format: :json)
end
