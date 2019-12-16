class UsersController < ApplicationController
    def index 
        users = User.all 
        render json: users 
    end
    def create 
       created = User.create(name: params[:username],password: params[:password], desc: params[:desc], image: params[:profilepic])
        render json: created
    end

    def show
    token = request.headers["Authorization"]
    payload = decode(token)
    user = User.find(payload["user_id"])
    render json: user
    end

    def login
        user = User.find_by({name: params[:name]}).authenticate(params[:password])
        if user 
            payload = {user_id: user.id}
            render json: {
              message: "successful login",
              authenticated: true,
              user: user,
              token: encode(payload)
            }, status: :accepted
            else 
                render json: {
                  message: "invalid username or password",
                  authenticated: false
                }, status: :unauthorized
              end 
    end
end
