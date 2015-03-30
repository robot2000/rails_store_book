class CombineItemsInCart < ActiveRecord::Migration

  def up
    Cart.all.each do |cart|
      sums = cart.product_carts.group(:product_id).sum(:quantity)
      sums.each do |product_id, quantity|
        if quantity > 1
          cart.product_carts.where(product_id: product_id).delete_all
          item = cart.product_carts.build(product_id: product_id)
          item.quantity = quantity
          item.save!
        end
      end
    end
  end

  def down
    ProductCart.where("quantity>1").each do |product_cart|
      product_cart.quantity.times do
        LineItem.create cart_id: product_cart.cart_id,
          product_id: product_cart.product_id, quantity: 1
      end
      item.destroy # remove item
    end
  end
end
