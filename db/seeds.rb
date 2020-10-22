# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

City.create!(city_name:"Rennes")
City.create!(city_name:"Nantes")
City.create!(city_name:"Brest")
City.create!(city_name:"Lorient")

10.times do
    dogsitter_list = Dogsitter.create!(name: Faker::Name.first_name, city: City.find(rand(1..4)))
end

10.times do
    dog_list = Dog.create!(dog_name: Faker::Games::Pokemon.name, city: City.find(rand(1..4)))
end

10.times do |i|
    10.times do |e|
        if Dog.find(i + 1).city == Dogsitter.find(e + 1).city
            Stroll.create!(dog: Dog.find(i + 1), dogsitter: Dogsitter.find(e + 1))
        end
    end
end

