class Album < ApplicationRecord
  belongs_to :user
  has_many :tracks
  has_many :reviews
end
