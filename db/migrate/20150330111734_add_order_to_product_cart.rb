class AddOrderToProductCart < ActiveRecord::Migration
  def change
    add_reference :product_carts, :order, index: true
    add_foreign_key :product_carts, :orders
  end
end
