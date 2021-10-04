class UsersController < ApplicationController

    def index
        render json: User.all
    end

    def create
        user = User.create(user_params)
        render json: user, status: :ok
    end

    def delete

    end

    private

    def user_params
        params.require(:user).permit(:name, :fav_loz_game, :pic)
    end
end
