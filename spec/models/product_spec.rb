require 'spec_helper'

describe Product do
  it "has a name" do
    product = Product.new.name = "name"
    product.name.should be_eq("name")
  end
  it "has a price that is an integer" do
    product=Product.new.price = 15.54
    product.price.should be_eq(15)
  end
end

