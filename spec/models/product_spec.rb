require 'rails_helper'

RSpec.describe Product, type: :model do
  it "is valid with price, description and category" do
    product = create(:product)
    expect(product).to be_valid
  end

  it "is invalid without price" do
    product = create(:product)
    product.price = nil
    expect(product).to be_invalid
  end

  it "is invalid without description" do
    product = create(:product)
    product.description = nil
    expect(product).to be_invalid
  end

  it "is invalid without category" do
    product = create(:product)
    product.category = nil
    expect(product).to be_invalid
  end

  it "full description" do
    product = create(:product)
    expect(product.full_description).to eq("#{product.price} - #{product.description} - #{product.category}")
  end


end
