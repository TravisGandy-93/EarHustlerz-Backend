class TrackSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :artist, :duration, :album
end
