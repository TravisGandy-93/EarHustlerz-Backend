class Api::V1::AlbumsController < ApplicationController

    # GET /albums
  # GET /albums.json
   def index
    @albums = Album.all

    render json: @albums
   end

  # GET /albums/1
  # GET /albums/1.json
   def show
    @album = Album.find(params[:id])
      render json: AlbumSerializer.new(@album)
   end

 
end
