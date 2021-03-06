class Api::V1::AlbumsController < ApplicationController
before_action :set_favorite, only: [:show, :update, :destroy]
    # GET /albums
  # GET /albums.json
   def index
    if logged_in?
        @favorites = current_user.favorites
        @albums = Album.all

        render json: AlbumSerializer.new(@albums) 
    end
   end

   def create
    @favorite = current_user.favorites.build(favorite_params)

    if @favorite.save
      render json:  AlbumSerializer.new(@favorite), status: :created
    else
      error_resp = {
        error: @favorite.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
   end

   def update
     if @favorite.update(favorite_params)
      render json:  AlbumSerializer.new(@favorite), status: :ok
      else
      error_resp = {
        error: @favorite.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
      end
    end
   

  # GET /albums/1
  # GET /albums/1.json
   def show
    @album = Album.find(params[:id])
      render json: AlbumSerializer.new(@album)
   end

   def destroy
      if @favorite.destroy
        render json: { data: "Album deleted"}, status: :ok
      else
        error_resp = {
          error: @favorite.errors.full_messages.to_sentence
        }
        render json: error_resp, status: :unprocessable_entity
      end
   end

   private
   # Use callbacks to share common setup or constraints between actions.
   def set_favorite
     @favorite = Album.find(params[:id])
   end

   # Only allow a trusted parameter "white list" through.
   def favorite_params
     params.require(:album).permit(:title, :artist, :cover, :genre)
   end
end
