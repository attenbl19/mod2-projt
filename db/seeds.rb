# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require faker
# for address data
Faker::Address.street_address
Faker::Address.city
Faker::Address.state
Faker::Address.zip_code

#for date and time data
Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short)

#names of Technicians
Faker::Name.name

#for phone numbers
Faker::PhoneNumber.phone_number



