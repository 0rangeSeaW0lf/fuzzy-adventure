class API::V1::Admin::VehiclesController < ApplicationController
    def index
        vehicles = Vehicle.all
        render :json => vehicles, status: :ok
    end
end
