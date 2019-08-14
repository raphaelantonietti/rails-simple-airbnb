# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
  flat = Flat.new(
    name: Faker::Superhero.name,
    address: Faker::Address.street_address,
    description: Faker::Movie.quote,
    price_per_night: Faker::Number.between(from: 15, to: 100),
    number_of_guests: Faker::Number.between(from: 1, to: 10)
  )
  flat.save!
end
