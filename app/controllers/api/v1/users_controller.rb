module Api
    module V1

        class UsersController < ApplicationController

            def create
                user = User.new(user_params)
                if user.save
                    render json: user, status: :created
                else
                    render json: user.errors, status: :unprocessable_entity
                end
            end

            def show
                user = User.find(params[:id])
                if user
                    render json: user, status: :found
                else
                    render json: user.errors, status: :not_found
                end
            end


            private
            def user_params
                params.require(:user).permit(:username, :password, :avatar)
            end
        end
    end
end
