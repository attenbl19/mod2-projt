class AppointmentsController < ApplicationController

    def index
        @appoinments = Appoinment.all
    end

    def new
        @appoinments = Appoinment.new
        @clients = Client.all
        @nts = NailTechnician.all
    end

    def create
        
         byebug

        @appoinment = Appoinment.create(appointment_params)
        # OR
        # appoinment.create(client_id: params[:appoinment][:client_id], nail_technician_id: params[:client][:nail_technician_id])
        
        # redirect_to dog_path(@daycare.dog)
        redirect_to @appoinment.client
    end

    def show
        # digesting the request: finding a appointment in a model
        @appointment = Appoinment.find(params[:id])
            
    end



    private

    appointment_params = params.require(:appoinment).permit(:client_id, :nail_technician_id, :day, :time)

end
