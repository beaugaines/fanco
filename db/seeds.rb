# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
10.times do
    User.create(
      name: Faker::Name.name, email: Faker::Internet.email, password: 'helloworld',
        role: 'creator', blurb: Faker::Hacker.say_something_smart
    )
end

users = User.creator

users.each do |u|
  3.times do
    u.reward_tiers.create(
      title: Faker::Lorem.sentence,
      blurb: Faker::Lorem.paragraph,
      price: rand(1.0..10.99),
    )
  end
end
