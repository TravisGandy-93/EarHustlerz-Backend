class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :reviews
  has_many :favorites, serializer: AlbumSerializer
end
