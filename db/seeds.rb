Restaurant.delete_all if Rails.env.development?

20.times do
  Restaurant.create(name: Faker::Hipster.word, address: Faker::Address.street_address, description: Faker::Dessert.variety, stars: Faker::Number.between(1, 5), chef: Faker::TvShows::RickAndMorty.character)
end


puts "You've added #{Restaurant.count} restaurants to the db"
