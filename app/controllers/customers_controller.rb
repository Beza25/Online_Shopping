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
        @customer = Customer.new(customer_params)
        if @customer.valid?
            @customer.save
            redirect_to customer_path(@customer)
        else
            render :new
        end
        
    end

    def edit
    end
    
    def update
        @customer.update(customer_params)
        if @customer.valid?
            @customer.save
            redirect_to customer_path(@customer)
        else
            render :edit
        end
      
    end
    
    def destroy
        Customer.destroy(params[:id])
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
