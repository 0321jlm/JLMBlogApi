class HomeController < ApplicationController
    # authenticate_user is now a resource you can use on any method to make sure the client is authorized
    before_action :authenticate_user,  only: [:auth]
    # before_action :authenticate_user
  
    # Public method
    def index
      render json: { service: 'auth-api', status: 200, msg: "things" }
    end
    
    # Authorized only method
    def auth
      render json: { status: 200, msg: "You are currently Logged-in as #{current_user.username}" }
    end
  
  end