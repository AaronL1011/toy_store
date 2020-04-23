class ManufacturersController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    #Show all celebrities
    def index
        @manufacturer = Manufacturer.all
    end
    
    #Show a single celebrity
    def show
        @manufacturer = Manufacturer.find(params[:id])
    end
    
    def new

    end

    def edit
        @manufacturer = Manufacturer.find(params["id"])
    end
    #Create a new celebrity
    def create
        name = params[:name]
        location = params[:location]

        @manufacturer = Manufacturer.create(name: name, location: location)

        redirect_to action: "index"
    end
    
    #Update a celebrity
    def update
        updated_manufacturer = Manufacturer.update(params["id"], name: params["name"], location: params["location"])

        redirect_to action: "show", id: params["id"]
    end
    
    #Remove a celebrity
    def destroy
        @manufacturer = Manufacturer.find(params[:id])
        @manufacturer.destroy

        redirect_to home_path
    end

end