# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
travis = User.create(name: "Travis", username: "Fatz Womack", password: "password")

def add_albums(albums: )
    puts "Adding albums ..."
    albums.each do |album|
        Album.create(album)
        puts "#{album.title} by #{album.artist}"
    end
    puts "... Done"
end

def add_tracks(tracks: )
    puts "Adding tracks ..."
    tracks.each {|track| Track.create(track)}
    puts "... Done"
end

def add_reviews(reviews: )
    puts "Adding reviews ..."
    reviews.each {|review| Review.create(review)}
    puts "... Done"
end

def add_photo_albums
    puts "No photo_albums ..."
    puts "... Done"
end

def add_podcasts
    puts "No podcasts ..."
    puts "... Done"
end

add_albums(albums: SeedData::Albums::AUDIO_ALBUMS)
add_tracks(tracks: SeedData::Tracks::TRACKS)
add_reviews(reviews: SeedData::Reviews::REVIEWS)
add_photo_albums
add_podcasts
