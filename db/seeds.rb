# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.destroy_all
Song.destroy_all
Show.destroy_all

10.times do 
 	Artist.create(name: Faker::Music.band, bio: Faker::Lorem.paragraph)
end

50.times do
	song = Song.new(title: Faker::Music.album)
	song.artist = Artist.all.sample
	song.save
end

10.times do 
	show = Show.new(venue: Faker::Address.city, time: Faker::Date.forward(rand(100)))
	show.artist = Artist.all.sample
	show.save
end