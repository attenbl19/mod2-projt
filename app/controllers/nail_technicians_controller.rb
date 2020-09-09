class NailTechniciansController < ApplicationController
   
    def index
        @nail_technicians = NailTechnician.all
    end

    def show
        @nail_technician = NailTechnician.find(params[:id])
    end

end
