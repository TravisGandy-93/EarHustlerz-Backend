class Api::V1::ReviewsController < ApplicationController

    def index
        @reviews = Review.all
    
        render json: ReviewSerializer.new(@reviews)
       end
    
      # GET /reviews/1
      # GET /reviews/1.json
       def show
        @review = Review.find(params[:id])
          render json: ReviewSerializer.new(@review)
       end
    
end
