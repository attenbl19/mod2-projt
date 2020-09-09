class ClientsController < ApplicationController


    def index
        @clients = Client.all
    end

    def new
        @client = Client.new
    end

    def create
        @client = Client.create(dog_params)
        redirect_to dog_path(@dog)
    end

    def show
        # byebug
        @client = Client.find(params[:id])
    end


    def edit 
        #we have this 
        @client = Client.find(params[:id]) 
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
