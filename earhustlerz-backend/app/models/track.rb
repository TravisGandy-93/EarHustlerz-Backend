class Track < ApplicationRecord
    belongs_to :album
    has_many :music_videos
end
