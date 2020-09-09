class NailServicesController < ApplicationController

    def index
        @nail_services = NailService.all
end
