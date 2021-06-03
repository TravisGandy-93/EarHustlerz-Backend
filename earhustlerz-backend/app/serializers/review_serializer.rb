class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :likes, :dislikes, :user, :album
end
