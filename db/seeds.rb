# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Restaurant.destroy_all

restaurants_array = [
  { name: 'Only Spaghetti 🍝', address: '1 place dItalie', phone_number: '1029', category: 'italian' },
  { name: 'Pékin panda 🍚', address: '3 rue Chinatown', phone_number: '0987', category: 'chinese' },
  { name: 'Tokyo sushi 🍣', address: '2 place Kyoto', phone_number: '1298', category: 'japanese' },
  { name: 'Oui oui baguette 🥖', address: '5 rue de la Pompe', phone_number: '1234', category: 'french' },
  { name: 'La Frite 🍟', address: '10 rue chocolat', phone_number: '1236', category: 'belgian' }
]

Restaurant.create(restaurants_array)

puts '5 restaurants créés'
