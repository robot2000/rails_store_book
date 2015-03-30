class Order < ActiveRecord::Base

  has_many :product_carts, dependent: :destroy

  PAYMENT_TYPES = [ "Check", "Credit card", "Purchase order" ]

  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: PAYMENT_TYPES


  def add_product_carts_from_cart(cart)
    cart.product_carts.each do |item|
      item.cart_id = nil
      product_carts << item
    end
  end
end