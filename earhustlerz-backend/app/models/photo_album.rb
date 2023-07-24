class PhotoAlbum < ApplicationRecord
    belongs_to :user
    has_many :images
    has_many :videos
    has_many :reviews, dependent: :destroy
  
    validates :title, :artist, presence: true
end