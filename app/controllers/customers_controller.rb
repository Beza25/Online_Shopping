class CustomersController < ApplicationController

    before_action :find_customer, only: [:show, :edit, :update]

    def index
        @customers = Customer.all
    end

    def new
        @customer = Customer.new
    end

    def show
    end

    def create
        @customer.find_or_create_by(customer_params)
        redirect_to customer_path(@customer)
    end

    def edit
    end
    
    def update
        @customer.update(customer_params)
        redirect_to customer_path(@customer)
    end
    
    def destroy
        # @customer = Customer.find(parms[:id])
        # @customer.destroy
        # Customer.destroy(params[:id])
        find_customer.destroy
        redirect_to customers_path
    end

    private 
    def find_customer
        @customer = Customer.find(params[:id])
    end

    def customer_params
        params.require(:customer).permit(:name)
    end

   
end
