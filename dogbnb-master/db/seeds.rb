# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dog.destroy_all
Dogsitter.destroy_all
DogsitterDog.destroy_all
Stroll.destroy_all

20.times do
	dog = Dog.create(name: Faker::Creature::Dog.name)
end	

20.times do
	dogsitter = Dogsitter.create(name: Faker::Name.first_name)
end

50.times do
	aff = DogsitterDog.create(dog: Dog.all[rand(0..19)], dogsitter: Dogsitter.all[rand(0..19)])
end

10.times do
	stroll = Stroll.create(dogsitter: Dogsitter.all[rand(0..19)])
end
