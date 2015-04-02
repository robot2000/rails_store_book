require 'rails_helper'

RSpec.describe Cart, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  let(:cart){Cart.create}
  let(:product1){Product.new(title: 'book21', description: 'Y.Matsumoto', image_url: 'book1.jpg', price: 100)}
  let(:product2){Product.new(title: 'book22', description: 'V.Suvorov', image_url: 'book1.jpg', price: 130)}

  it "add unique products" do
    expect(Cart.count).to eq(0)
    cart.add_product(product1.id).save!
    cart.add_product(product2.id).save!
    expect(Cart.count).to eq(1)
  end

  # it "cart total price" do
  #   cart.add_product(product1.id).save!
  #   cart.add_product(product2.id).save!
  #   expect{(product1.price)+(product2.price)}.to eq(cart.total_price)
  # end
end
