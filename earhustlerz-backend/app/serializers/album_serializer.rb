class AlbumSerializer
  include FastJsonapi::ObjectSerializer
  attributes :tracks, :reviews
end
