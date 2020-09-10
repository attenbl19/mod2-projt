class AppointmentsController < ApplicationController
    # def index
    #     @appoinments = Appoinment.all
    # end

    def index
        @ppointments = Appointment.all
    end

    def new
        @appointment = Appointment.new
        @clients = Client.all
        @nail_technicians = NailTechnician.all
    end

    


    def create
        #byebug
        @appointment = Appointment.create(appointment_params)
        if @appointment.valid?
            redirect_to @appointment.client
        else
            redirect_to new_appointment_path 
        end
    end

    def show
        # digesting the request: finding an appointment in a model
        @appointment = Appointment.find(params[:id])
            
    end



    private
    def appointment_params

        appointment_params = params.require(:appointment).permit(:client_id, :nail_technician_id, :day, :time)

    end

end
