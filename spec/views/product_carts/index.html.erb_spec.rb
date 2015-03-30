require 'rails_helper'

RSpec.describe "product_carts/index", type: :view do
  before(:each) do
    assign(:product_carts, [
      ProductCart.create!(
        :product => nil,
        :cart => nil
      ),
      ProductCart.create!(
        :product => nil,
        :cart => nil
      )
    ])
  end

  it "renders a list of product_carts" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 4
    assert_select "tr>td", :text => nil.to_s, :count => 4
  end
end
