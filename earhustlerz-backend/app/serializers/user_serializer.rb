class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :favorites, :reviews
end
