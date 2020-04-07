class ProductsController < ApplicationController

    before_action :find_product, only: [:show, :edit, :update, :destroy]

    def index
        @products = Product.all
    end

    def new
        @product = Product.new
    end

    def show

    end

    def create
        product = Product.create(product_params)
        redirect_to product_path(product)
    end

    def edit

    end

    def update
        @product.update(product_params)
        redirect_to product_path(@product)
    end

    def destroy
       
        @product.destroy

        redirect_to products_path
    end


    private

    def find_product
        @product = Product.find(params[:id])
    end

    def product_params
        params.require(:product).permit(:name, :price)
    end

end
