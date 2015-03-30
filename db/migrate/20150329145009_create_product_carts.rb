class CreateProductCarts < ActiveRecord::Migration
  def change
    create_table :product_carts do |t|
      t.references :product, index: true
      t.belongs_to :cart, index: true

      t.timestamps null: false
    end
    add_foreign_key :product_carts, :products
    add_foreign_key :product_carts, :carts
  end
end
