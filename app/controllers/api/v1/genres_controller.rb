module Api
    module V1

        class GenresController < ApplicationController

            def index
                render json: Genre.all
            end

            def create
                genre = Genre.new(genre_params)
                if genre.save
                    render json: genre, status: :created
                else
                    render json: genre.errors, status: :unprocessable_entity
                end
            end

            private
            def genre_params
                params.require(:genre).permit(:genre_name)
            end

        end
    end
end
