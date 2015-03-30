require 'rails_helper'

RSpec.describe "product_carts/new", type: :view do
  before(:each) do
    assign(:product_cart, ProductCart.new(
      :product => nil,
      :cart => nil
    ))
  end

  it "renders new product_cart form" do
    render

    assert_select "form[action=?][method=?]", product_carts_path, "post" do

      assert_select "input#product_cart_product_id[name=?]", "product_cart[product_id]"

      assert_select "input#product_cart_cart_id[name=?]", "product_cart[cart_id]"
    end
  end
end
