# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Hotel.create!(name: "Hill Park", Address: "123-0100 Nairobi", location: "Lower Hill")
5.times do
  rooms = Hotel.last.rooms.build
  rooms.update(room_type: "Single", cost: rand(4500..10000), capacity: rand(1.5), beds: rand(1.5), baths: rand(1.5))
end
