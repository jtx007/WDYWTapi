module Api
    module V1

        class ShowsController < ApplicationController

            def index
                render json: Show.all
            end

            def create
                show = Show.new(show_params)
                if show.save 
                    render json: show, status: :created
                else
                    render json: show.errors, status: :unprocessable_entity
                end
            end
            
            
            private
            def show_params
                params.require(:show).permit(:title, :user_id, :genre_id, :cover)
            end
        end
    end
end
