class ToysController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    #Show all celebrities
    def index
        @toys = Toy.all
    end
    
    #Show a single celebrity
    def show
        @toy = Toy.find(params[:id])
    end
    
    #Create a new celebrity
    def create
        name = params[:name]
        description = params[:description]
        date = params[:date] #YYYY-MM-DD
        user = params[:user]

        @toy = Toy.create(name: name, description: description, date: date, user: user)

        render json: @toy
    end
    
    #Update a celebrity
    def update
        @toy = Toy.find(params[:id])

        @toy.name = params[:name]
        @toy.description = params[:description]
        @toy.date = params[:date]
        @toy.user = params[:user]

        @toy = Toy.find(params[:id])
        render json: @toy
    end
    
    #Remove a celebrity
    def destroy
        @toy = Toy.find(params[:id]).destroy
    end

end