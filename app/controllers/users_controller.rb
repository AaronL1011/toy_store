class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    #Show all celebrities
    def index
        @user = User.all
    end
    
    #Show a single celebrity
    def show
        @user = User.find(params[:id])
    end
    
    def new

    end

    def edit
        @User = User.find(params["id"])
    end
    #Create a new celebrity
    def create
        email = params[:email]
        password = params[:password]

        @user = User.create(email: email, password: password)

        redirect_to action: "index"
    end
    
    #Update a celebrity
    def update
        updated_user = User.update(params["id"], email: params["email"], password: params["password"])

        redirect_to action: "show", id: params["id"]
    end
    
    #Remove a celebrity
    def destroy
        @user = User.find(params[:id])
        @user.destroy

        redirect_to home_path
    end

end