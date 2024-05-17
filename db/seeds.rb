# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "creating flats"

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: 'Lofty palace in Dubai',
  address: '12 4 A Rifton street',
  description: "Extremely poorly build appartement for way to much money but you're desperate, so we can do whatever we want!",
  price_per_night: 500,
  number_of_guests: 1
)

Flat.create!(
  name: 'Stunning view in New York Area',
  address: 'Parks Avenue 500',
  description: 'A simple but astonishing wooden hut right outside of New York.',
  price_per_night: 10,
  number_of_guests: 4
)

Flat.create!(
  name: 'Beautiful place to get old in',
  address: 'End of the Street around the corner left',
  description: '5000 m² for doing whatever you want until the end of your days.',
  price_per_night: 100,
  number_of_guests: 6
)
