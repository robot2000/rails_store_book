require 'rails_helper'
  RSpec.describe Product, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  let(:product1){described_class.new(title: 'book21', description: 'Y.Matsumoto', image_url: 'book1.jpg', price: 100)}
  let(:product2){described_class.new(title: 'book22', description: 'V.Suvorov', image_url: 'book1.jpg', price: 130)}

  it 'counts product' do
    expect(described_class.count).to eq(0)
    product1.save
    expect(described_class.count).to eq(1)
    product2.save
    expect(described_class.count).to eq(2)
  end

  it "find first product" do
    expect(described_class.first).to eq(nil)
    product2.save
    expect(described_class.first).to eq(product2)
  end

  it "find by name" do
    expect(described_class.find_by title: 'book20').to eq(nil)
    product2.save
    expect(described_class.find_by title: 'book22').to eq(product2)
  end
end