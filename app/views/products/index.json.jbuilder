json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :quantity, :sell_price, :cost_of_product, :shipping_weight, :thumbnail, :picture
  json.url product_url(product, format: :json)
end
