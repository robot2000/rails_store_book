require 'rails_helper'

RSpec.describe "product_carts/show", type: :view do
  before(:each) do
    @product_cart = assign(:product_cart, ProductCart.create!(
      :product => nil,
      :cart => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
