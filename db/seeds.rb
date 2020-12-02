require 'rspotify'

SEARCH_TERMS = %w(joe+rogan tim+ferris sport health lifestyle business productivity education)
TAGS = "Arts, Books, Design, Fashion & Beauty, Food, Performing Arts, Visual Arts, Business, Careers, Entrepreneurship, Investing, Management, Marketing, Non-Profit, Comedy, Comedy, Interviews, Improv, Stand-Up, Education, Courses, How To, Language Learning, Self-Improvement, Fiction, Comedy Fiction, Drama, Science Fiction, Government, History, Health & Fitness, Alternative Health, Fitness, Medicine, Mental Health, Nutrition, Sexuality, Kids & Family, Education for Kids, Parenting, Parenting, Pets & Animals, Stories for Kids, Leisure, Animation & Manga, Automotive, Aviation, Crafts, Games, Hobbies, Home & Garden, Video Games, Music, Music Commentary, Music History, Music Interviews, News, Business News, Daily News, Entertainment News, News Commentary, Politics, Sports News, Tech News, Religion & Spirituality, Buddhism, Christianity, Hinduism, Islam, Judaism, Religion, Spirituality, Science, Astronomy, Chemistry, Earth Sciences, Life Sciences, Mathematics, Natural Sciences, Nature, Physics, Social Sciences, Society & Culture, Documentary, Personal Journals, Philosophy, Places & Travel, Relationships, Sports, Baseball, Basketball, Cricket, Fantasy Sports, Football, Golf, Hockey, Rugby, Running, Soccer, Swimming, Tennis, Volleyball, Wilderness, Wrestling, Technology, True Crime, TV & Film, After Shows, Film History, Film Interviews, Film Reviews, TV Reviews
".split(', ')

puts 'Clearing the DB'

Favorite.destroy_all
puts 'Favorites destroyed'

Tag.destroy_all
puts 'Tags destroyed'

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

TAGS.each do |tag|
  new_tag = Tag.create(name: "#{tag}")
  puts "Created new Tag: #{new_tag['name']}"
end

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



