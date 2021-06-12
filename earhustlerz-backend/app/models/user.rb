class User < ApplicationRecord
    has_secure_password
    has_many :favorites, foreign_key: "user_id", class_name: "Album"
    has_many :reviews
    has_many :albums

    validates :name, presence: true
    validates :username, uniqueness: true
end
