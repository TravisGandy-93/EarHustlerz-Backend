class User < ApplicationRecord
    has_secure_password
    has_many :favorites, foreign_key: "user_id", class_name: %w[Album PhotoAlbum Podcast Reviews]
    has_many :reviews
    has_many :albums
    has_many :photo_albums

    validates :name, presence: true
    validates :username, uniqueness: true
end
