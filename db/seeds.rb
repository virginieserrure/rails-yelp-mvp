# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', phone_number: '0612457812', category: 'french' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St', phone_number: '0696324851', category: 'italian' }
le_point_gourmand = { name: 'Le Point Gourmand', address: 'fligne', phone_number: '0678236914', category: 'french' }
japon_new =  { name: 'Japon New', address: 'Paris', phone_number: '0648561278', category: 'japanese' }
le_royal = { name: 'Le Royal', address: 'Quievrain', phone_number: '0612853746', category: 'belgian' }

[dishoom, pizza_east, le_point_gourmand, japon_new, le_royal].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
