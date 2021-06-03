# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
travis = User.create(name: "Travis", username: "Fatz Womack", password: "password")
Album.create(title: "Certified Lover Boy", cover: "https://images.genius.com/803cb1c6daf05ff36a59ca8e...", artist: "Drake", genre: "Rap", user_id: 1)
Track.create(title: "track 1", artist: "Drake", duration: "2000-01-01 00:05:22.000000000 +0000", album_id: 1)
Review.create(content: "its a cool little album lol", likes: 1, dislikes: 0, user_id: 1, album_id: 1)