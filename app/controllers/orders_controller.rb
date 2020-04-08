class OrdersController < ApplicationController
    before_action :find_order, only: [:show, :edit, :update]

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
        @order = Order.create(order_params) 
        if @order.valid?
            @order.save
            redirect_to order_path(@order)
        else
            render :new
        end
    end

    def edit
    end

    def update
        #gb
        @order.update(order_params)
        if @order.valid?
            @order.save
            redirect_to order_path(@order)
        else
            render :edit 
        end
        
    end

    def destroy
        # byebug
        Order.destroy(params[:id])
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
