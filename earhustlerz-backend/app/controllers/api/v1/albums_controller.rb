class Api::V1::AlbumsController < ApplicationController

    # GET /albums
  # GET /albums.json
   def index
    if logged_in?
        @favorites = current_user.favorites

        render json: AlbumSerializer.new(@favorites)
    else
        @albums = Album.all

        render json: AlbumSerializer.new(@albums) 
    end
   end

  # GET /albums/1
  # GET /albums/1.json
   def show
    @album = Album.find(params[:id])
      render json: AlbumSerializer.new(@album)
   end

 
end
