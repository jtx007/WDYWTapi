module Api
    module V1

        class CommentsController < ApplicationController

            def index
                render json: Comment.all
            end

            def create
                comment = Comment.new(comment_params)
                if comment.save
                    render json: comment, status: :created
                else
                    render json: comment.errors, status: :unprocessable_entity
                end
            end

            private
            def comment_params
                params.require(:comment).permit(:comment_body, :user_id, :show_id)
            end

        end
    end
end
