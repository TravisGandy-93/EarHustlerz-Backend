class Album < ApplicationRecord
  belongs_to :user
  has_many :tracks
  has_many :reviews

  validates :title, :cover, :artist, presence: true
end
