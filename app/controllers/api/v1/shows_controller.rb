module Api
    module V1

        class ShowsController < ApplicationController
            before_action :authorize_request, except: :index
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

            def update
                show = Show.find(params[:id])
                show.update(show_params)
                show.save
                render json: show, status: :accepted
            end

            def destroy
                show = Show.find(params[:id])
                show.destroy
                render json: show, status: :ok
            end
            
            
            private
            def show_params
                params.require(:show).permit(:title, :user_id, :genre_id, :cover)
            end
        end
    end
end
