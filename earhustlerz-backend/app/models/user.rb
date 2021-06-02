class User < ApplicationRecord
    has_secure_password
    has_many :favorites, foreign_key: "user_id", class_name: "Album"
end
