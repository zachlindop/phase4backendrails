class GamesController < ApplicationController

    def index
        @games = if params[:user_id].present?
            Game.where(user_id: params[:user_id])
        else
            Game.all
        end        
        render json: @games, status: :ok
    end
end
#with status