require 'rails_helper'

RSpec.describe "product_carts/edit", type: :view do
  before(:each) do
    @product_cart = assign(:product_cart, ProductCart.create!(
      :product => nil,
      :cart => nil
    ))
  end

  it "renders the edit product_cart form" do
    render

    assert_select "form[action=?][method=?]", product_cart_path(@product_cart), "post" do

      assert_select "input#product_cart_product_id[name=?]", "product_cart[product_id]"

      assert_select "input#product_cart_cart_id[name=?]", "product_cart[cart_id]"
    end
  end
end
