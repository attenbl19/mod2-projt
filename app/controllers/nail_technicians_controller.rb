class NailTechniciansController < ApplicationController
    def index
        @nail_technicians = NailTechnician.all
    end

    def show
        @nail_technician = NailTechnician.find(params[:id])
    end

    def destroy
        @nail_technician = NailTechnician.find(params[:id])
        @nail_technician.destroy
        redirect_to nail_technicians_path
    end
end
