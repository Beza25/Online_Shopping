class OrdersController < ApplicationController
    before_action :find_order, only: [:show, :edit, :update, :destroy]

    def index 
        @orders = Order.all
    end

    def show
        # byebug
    end

    def new
        @order = Order.new
    end

    def create
      
        #Creates new order ; Is a POST request
        order = Order.create(order_params)
        # cstomer = Customer.build()
        redirect_to order_path(order)
    end

    def edit
    end

    def update
        #
        @order.update(order_params)
        redirect_to order_path(@order)
    end

    def destroy
 
        @order.destroy
        @order.product.destroy
        @order.customer.destroy
        redirect_to orders_path
    end

    private 
    
    def find_order
        @order = Order.find(params[:id])
    end

    def order_params
        params.require(:order).permit(:date, :product_id, :customer_id, :quantity)
    end

end
