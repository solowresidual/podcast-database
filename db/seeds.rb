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

# ----------------Start Creating Podcast -----------------
podcast1 = Podcast.create!(
  name: "Test Podcast",
  description: "description",
  category: "Something"
)
# ----------------Finish Creating Podcast -----------------

# ----------------Start Creating Episode -----------------
puts "podcast created: #{podcast1.name}" # Should match the Podcast variable name you picked above

episode1 = Episode.create!(
  name: "Test Episode",
  description: "Lorem ipsum dolor sit amet, vidit graecis disputationi ei ius, ea voluptaria sadipscing eloquentiam vim. Cu his eros insolens. Eu eripuit singulis scriptorem eos. Ea nonumes iudicabit pri, wisi tempor recusabo ex vis, habeo nostrud eam cu. Vix ponderum pertinax complectitur ne, dolor scribentur id ius, ut mel fugit consetetur.

    Eos et simul assentior. Gubergren euripidis est ad. At dissentias sadipscing signiferumque mel. Impetus mentitum facilisi ius et, no sumo summo mollis mea. Pri augue omnes ut, sit accusam persequeris ex, no postulant partiendo sit. Facete iuvaret adipisci sit id, eos eu agam iudicabit philosophia. Ei eum volumus adversarium.",
  podcast: podcast1 # Should match the Podcast variable name you picked above
)

puts "episode created: #{episode1.name}" # Should match the Episode variable you picked above
# ----------------Finish Creating Episode -----------------

10.times do
  user = User.create(
    email: Faker::Internet.email,
    password: '123456'
  )

  puts "user created: #{user.email}"

  review = Review.create(
    content: Faker::Restaurant.review,
    rating: rand(1..5),
    tag: Faker::Music.genre,
    user: user,
    episode: Episode.all.sample
  )

  puts "review created: #{review.id}"

  favorite = Favorite.create(
    user: user,
    episode: Episode.all.sample,
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

