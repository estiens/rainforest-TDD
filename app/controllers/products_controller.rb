class ProductsController < ApplicationController
  
  def create
    @product = Product.new(product_params)
      if @photo.save
      redirect_to @photo
      else
      render :new
      end
  end

  def show
    @product=Product.find(params[:id])
  end

  def new
    @product=Product.new
  end

  def edit
    @product=Product.find(params[:id])
  end

  def update
    @product=Product.find(params[:id])

    if @product.update_attributes(params[:product])
      redirect to @product
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
  end

 def product_params
    params.require(:product).permit(:price, :name, :description)
 end

end
