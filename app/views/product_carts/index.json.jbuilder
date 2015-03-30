json.array!(@product_carts) do |product_cart|
  json.extract! product_cart, :id, :product_id, :cart_id
  json.url product_cart_url(product_cart, format: :json)
end
