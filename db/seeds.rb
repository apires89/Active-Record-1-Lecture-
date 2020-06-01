# This is where you can create initial data for your app.
require 'faker'
require 'json'
require 'rest-client'
require 'byebug'

p "cleaning up the database"

Restaurant.destroy_all

p "seeding the DB"

5.times do
 restaurant = Restaurant.new(name: Faker::Restaurant.name, address: "Lisbon", rating: rand(0..5))
 restaurant.save
end


response = RestClient.get "https://api.github.com/users/lewagon/repos"
repos = JSON.parse(response)
byebug
 restaurant = Restaurant.new(name: repos.first["full_name"], address: "Lisbon", rating: rand(0..5))


p "Finished!"

