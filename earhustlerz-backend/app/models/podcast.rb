class Podcast < ApplicationRecord
    belongs_to :user
    has_many :audio_episodes
    has_many :video_episodes
    has_many :reviews, dependent: :destroy
  
    validates :title, :host, presence: true
end