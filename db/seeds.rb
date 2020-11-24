# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Starting seed file...'

  user = User.create(
    email: Faker::Internet.email,
    password: '123456'
  )

  podcast = Podcast.create(
    name: Faker::Music.album,
    description: "This is a placeholder",
    category: Faker::Music.genre
  )

  episode = Episode.create!(
    name: Faker::Music::Prince.song,
    description: "This is a placeholder",
    podcast: podcast
  )

  review = Review.create(
    content: Faker::Restaurant.review,
    rating: rand(1..5),
    tag: Faker::Music.genre,
    user: user,
    episode: episode
  )

  favorite = Favorite.create(
    user: user,
    episode: episode,
    finished: [false, true].sample
  )









