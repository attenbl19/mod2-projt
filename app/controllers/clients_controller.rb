class ClientsController < ApplicationController


    def index
        @client = Dog.all
    end

    def new
        @client = Dog.new
    end

    def create
        @client = Dog.create(dog_params)
        redirect_to dog_path(@dog)
    end

    def show
        # byebug
        @client = Dog.find(params[:id])
    end


    def edit
        
        #we have this 
        @client = Dog.find(params[:id]) 
        @nail_services = @client.nail_services

    end



    def update
        @client = Client.find(params[:id])
        @client.update(client_params)
        redirect_to client_path(@client)


    end


    def destroy
        #we want to find what we are destroying
        #after destroying we redirect to homepage
        @client = Client.find(params[:id])
        
        @client.destroy
        
        redirect_to clients_path

    end




    private


    def client_params
        params.require(:client).permit(:username, :password, :email, :phone_num)
    end
end
end
