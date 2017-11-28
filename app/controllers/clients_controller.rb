class ClientsController < ApplicationController
    def show
        @clients = clients_helper.find_by_id(params[:id])
        # #@children = child_helper.find_by_facility(params[:id])
        # @complaints = complaint_helper.find_by_facility(params[:id])
    end 
end
