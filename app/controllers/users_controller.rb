class UsersController < ApplicationController

    def index
        render json: User.all
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user.to_json(methods: [:items])
    end
end
