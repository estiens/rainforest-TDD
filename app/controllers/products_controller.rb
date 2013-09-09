class ProductsController < ApplicationController
  
  def index
    @products = Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  def create
    @product = Product.new(product_params)
      if @product.save
      redirect_to @product
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
    params.require(:product).permit(:price_in_cents, :name, :description)
 end

end
