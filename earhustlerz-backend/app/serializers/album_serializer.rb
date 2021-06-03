class AlbumSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :cover, :artist, :genre, :tracks, :reviews
end
