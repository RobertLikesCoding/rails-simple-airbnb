# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Deleting existing flats..."
Flat.delete_all

puts "creating flats"

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3,
  url: "https://images.unsplash.com/photo-1554995207-c18c203602cb?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

Flat.create!(
  name: 'Lofty palace in Dubai',
  address: '12 4 A Rifton street',
  description: "Extremely poorly build appartement for way to much money but you're desperate, so we can do whatever we want!",
  price_per_night: 500,
  number_of_guests: 1,
  url: "https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?q=80&w=2075&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)

Flat.create!(
  name: 'Stunning view in New York Area',
  address: 'Parks Avenue 500',
  description: 'A simple but astonishing wooden hut right outside of New York.',
  price_per_night: 10,
  number_of_guests: 4,
  url: "https://images.unsplash.com/photo-1600585154340-be6161a56a0c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDZ8fHxlbnwwfHx8fHw%3D"
)

Flat.create!(
  name: 'Beautiful place to get old in',
  address: 'End of the Street around the corner left',
  description: '5000 m² for doing whatever you want until the end of your days.',
  price_per_night: 100,
  number_of_guests: 6,
  url: "https://images.unsplash.com/photo-1576941089067-2de3c901e126?q=80&w=1956&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
)


puts "Flats created: #{Flat.count}"
puts "Flat URLs: #{Flat.pluck(:url).inspect}"
