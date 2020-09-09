class NailTechniciansController < ApplicationController
    def index
        @nail_techs = NailTechnician.all
    end

    def show
        @nail_tech = NailTechnician.find(params[:id])
    end
end
