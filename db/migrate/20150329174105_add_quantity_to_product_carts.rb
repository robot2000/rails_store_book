class AddQuantityToProductCarts < ActiveRecord::Migration
  def change
    add_column :product_carts, :quantity, :integer, default: 1
  end
end
