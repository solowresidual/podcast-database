require 'rspotify'

SEARCH_TERMS = %w(joe+rogan tim+ferris sport health lifestyle business productivity education)

puts 'Clearing the DB'

Favorite.destroy_all
puts 'Favorites destroyed'

Review.destroy_all
puts 'Reviews destroyed'

Episode.destroy_all
puts 'Episodes destroyed'

Podcast.destroy_all
puts 'Podcasts destroyed'

User.destroy_all
puts 'Users destroyed'

puts 'Starting seed file...'

RSpotify.authenticate(ENV['SPOTIFY_ID'], ENV['SPOTIFY_SECRET'])
RSpotify.raw_response = true

SEARCH_TERMS.each do |term|
  shows_url = "https://api.spotify.com/v1/search?query=#{term}&type=show&market=GB&limit=5"
  shows_response =  RSpotify.get(shows_url)
  shows = JSON.parse(shows_response)['shows']['items']

  shows.each do |show|
    podcast = Podcast.new(
      name: show['name'],
      description: show['description'],
      spotify_id: show['id']
    )

    photo = URI.open(show['images'][0]['url'])
    podcast.photo.attach(io: photo, filename: 'photo.jpg', content_type: 'image/jpg')
    podcast.save

    puts "Created new Podcast: #{show['name']}"

    episodes_url = "https://api.spotify.com/v1/shows/#{show['id']}/episodes?&limit=5&market=GB"
    episodes_response =  RSpotify.get(episodes_url)
    episodes = JSON.parse(episodes_response)['items']

    episodes.each do |episode|
      episode = Episode.create!(
        name: episode['name'],
        description: episode['description'],
        spotify_id: episode['id'],
        podcast: podcast
      )
      puts "Created new epsiode: #{episode['name']} "
    end
    sleep(1)
  end

  puts "Processed #{term} search term!"

  sleep(1)
end

10.times do
  user = User.create(
    email: Faker::Internet.email,
    password: '123456'
  )

  puts "User created: #{user.email}"
end

puts "Created #{Podcast.count} Podcasts"
puts "Created #{Episode.count} Episodes"
puts "Created #{User.count} Users"



