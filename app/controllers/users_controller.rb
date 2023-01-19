class UsersController < ApplicationController

    def show
        user = User.find_by(id: session[:user_id])
        if user
            render json: user, status: 200
        else
            render json: { errors: "Not authorized" }, status: 401
        end
    end
end
