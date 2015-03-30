require 'rails_helper'

RSpec.describe "ProductCarts", type: :request do
  describe "GET /product_carts" do
    it "works! (now write some real specs)" do
      get product_carts_path
      expect(response).to have_http_status(200)
    end
  end
end
