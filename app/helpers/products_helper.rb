module ProductsHelper

    def index
    end

    def show
    end

    def create
    end

    def edit
    end

    def update
    end


    def destroy
    end

    def product_params
      params.require(:product).permit(:name, :price_in_cents, :description)
    end


end
