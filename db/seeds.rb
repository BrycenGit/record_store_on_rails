# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# album_list = [
#   ["Rtj3", "Rap"],
#   ["The Slow Rush", "Acid Rock"],
#   ["The Album", "K-pop"]
# ]

# album_list.each do |name, genre|
#   Album.create(name: name, genre: genre)
# end

Album.destroy_all

50.times do |index|
  Album.create!(name: Faker::Music.album, genre: Faker::Music.genre)
end

p "Created #{Album.count} albums"