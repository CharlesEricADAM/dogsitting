require 'faker'
# City.destroy_all
# Dog.destroy_all
# Dogsitters.destroy_all
# Stroll.destroy_all

puts "Cities creation"
5.times do
  City.create(city_name: Faker::Address.city)
end
tp City.all

puts "Dog creation"
5.times do
  Dog.create(name: Faker::Creature::Dog.name, city: City.all.sample)
end
tp Dog.all

puts "Dogsitter creation"
5.times do
  Dogsitter.create(name: Faker::Name.first_name, city: City.all.sample)
end
tp Dogsitter.all

puts "Strolls creation"
10.times do
  # random_dog = Dog.all.sample # this is to make sure the dog's city will also be the stroll's city
  Stroll.create(name: Faker::Name.first_name, dogsitter: Dogsitter.all.sample, dog: Dog.all.sample, city: City.all.sample)
end 
tp Stroll.all


