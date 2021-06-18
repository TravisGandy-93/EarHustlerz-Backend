class Api::V1::ReviewsController < ApplicationController

    def index
        @reviews = Review.all
    
        render json: ReviewSerializer.new(@reviews)
    end
    
    def create  
      if @review.save
        render json:  ReviewSerializer.new(@review), status: :created
      else
        error_resp = {
          error: @review.errors.full_messages.to_sentence
        }
        render json: error_resp, status: :unprocessable_entity
      end
     end
      # GET /reviews/1
      # GET /reviews/1.json
       def show
        @review = Review.find(params[:id])
          render json: ReviewSerializer.new(@review)
       end
    
end
