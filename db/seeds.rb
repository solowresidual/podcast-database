# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Clearing the DB'

Favorite.destroy_all
puts 'favorites destroyed'

Review.destroy_all
puts 'reviews destroyed'

Episode.destroy_all
puts 'episodes destroyed'

Podcast.destroy_all
puts 'podcasts destroyed'

User.destroy_all
puts 'users destroyed'

puts 'Starting seed file...'

10.times do
  user = User.create(
    email: Faker::Internet.email,
    password: '123456'
  )

  puts "user created: #{user.email}"

  podcast = Podcast.create(
    name: Faker::Music.album,
    description: "This is a placeholder",
    category: Faker::Music.genre
  )

  puts "podcast created: #{podcast.name}"

  episode = Episode.create!(
    name: Faker::Music::Prince.song,
    description: "This is a placeholder",
    podcast: podcast
  )

  puts "episode created: #{episode.name}"

  review = Review.create(
    content: Faker::Restaurant.review,
    rating: rand(1..5),
    tag: Faker::Music.genre,
    user: user,
    episode: episode
  )

  puts "review created: #{review.id}"

  favorite = Favorite.create(
    user: user,
    episode: episode,
    finished: [false, true].sample
  )

  puts "favorite created: #{favorite.id}"

end

puts "Finished!!"

puts "Created #{User.count} Users"
puts "Created #{Podcast.count} Podcasts"
puts "Created #{Episode.count} Episodes"
puts "Created #{Review.count} Reviews"
puts "Created #{Favorite.count} Favorites"

