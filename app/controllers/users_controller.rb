class UsersController < ApplicationController

    def index
        render json: User.order(created_at: :desc)
    end

    # def show

    #     user_found = user.find_by(id: params[:id])
    #         if user_found
    #             render json: user_found
    #         else
    #             render json: {error: "User not found"}
    #         end

    # end

    def create        
        user = User.create!(user_params.merge(password: 'test123'))
        render json: user, status: :ok
    end

    def login
        @user = User.new(login_params)
            if @user.save
                login!
                render json: {
                status: :created,
                user: @user
            }
            else
                render json: {
                status: 500,
                errors: @user.errors.full_messages
            }
            end
    end

    def update
        user = User.find(params[:id])
        if user.update(user_params)
            render json: user, status: :ok
        else
            render json: { message: 'Had problem while updating user' }, status: 422
        end
    end

    def destroy
        user = User.find_by(id: params[:id])
        if user.present?
            user.destroy
            render json: { message: 'User deleted successfully' }, status: :ok
        else
            render json: { error: 'user not found' }, status: 404
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :fav_loz_game, :pic)
    end

    def login_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end
end
