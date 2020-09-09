class NailServicesController < ApplicationController

    def index
        @nail_service = NailService.all
    end

    def show
        @nail_service = NailService.find(params[:id])
    end

    
end
