require 'spec_helper'

describe Product do
  it "must contain a name" do
    @product = Product.new
    @product.should_not be_valid
  end

  it "must contain a price" do
    @product=Product.new
    @product.name="test"
    @product.should_not be_valid
  end

  it "has a price that is an integer" do
    @product=Product.new
    @product.price_in_cents=15.54
    @product.price_in_cents.should eq(15)
  end

end 
