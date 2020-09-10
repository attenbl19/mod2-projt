# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# clearing out the records
Appointment.destroy_all
Client.destroy_all
NailService.destroy_all
NailTechnician.destroy_all
Store.destroy_all

Appointment.reset_pk_sequence
Client.reset_pk_sequence
NailService.reset_pk_sequence
NailTechnician.reset_pk_sequence
Store.reset_pk_sequence


#creating clients
client_1 = Client.create(username: Faker::Internet.username(specifier: 5..8), password: Faker::Internet.password(min_length: 8, mix_case: true, special_characters: true), email: Faker::Internet.safe_email, phone_number: Faker::PhoneNumber.cell_phone)
client_2 = Client.create(username: Faker::Internet.username(specifier: 5..8), password: Faker::Internet.password(min_length: 8, mix_case: true, special_characters: true), email: Faker::Internet.safe_email, phone_number: Faker::PhoneNumber.cell_phone)
client_3 = Client.create(username: Faker::Internet.username(specifier: 5..8), password: Faker::Internet.password(min_length: 8, mix_case: true, special_characters: true), email: Faker::Internet.safe_email, phone_number: Faker::PhoneNumber.cell_phone)
client_4 = Client.create(username: Faker::Internet.username(specifier: 5..8), password: Faker::Internet.password(min_length: 8, mix_case: true, special_characters: true), email: Faker::Internet.safe_email, phone_number: Faker::PhoneNumber.cell_phone)
client_5 = Client.create(username: Faker::Internet.username(specifier: 5..8), password: Faker::Internet.password(min_length: 8, mix_case: true, special_characters: true), email: Faker::Internet.safe_email, phone_number: Faker::PhoneNumber.cell_phone)
client_6 = Client.create(username: Faker::Internet.username(specifier: 5..8), password: Faker::Internet.password(min_length: 8, mix_case: true, special_characters: true), email: Faker::Internet.safe_email, phone_number: Faker::PhoneNumber.cell_phone)
client_7 = Client.create(username: Faker::Internet.username(specifier: 5..8), password: Faker::Internet.password(min_length: 8, mix_case: true, special_characters: true), email: Faker::Internet.safe_email, phone_number: Faker::PhoneNumber.cell_phone)
client_8 = Client.create(username: Faker::Internet.username(specifier: 5..8), password: Faker::Internet.password(min_length: 8, mix_case: true, special_characters: true), email: Faker::Internet.safe_email, phone_number: Faker::PhoneNumber.cell_phone)
client_9 = Client.create(username: Faker::Internet.username(specifier: 5..8), password: Faker::Internet.password(min_length: 8, mix_case: true, special_characters: true), email: Faker::Internet.safe_email, phone_number: Faker::PhoneNumber.cell_phone)
client_10 = Client.create(username: Faker::Internet.username(specifier: 5..8), password: Faker::Internet.password(min_length: 8, mix_case: true, special_characters: true), email: Faker::Internet.safe_email, phone_number: Faker::PhoneNumber.cell_phone)
client_11 = Client.create(username: Faker::Internet.username(specifier: 5..8), password: Faker::Internet.password(min_length: 8, mix_case: true, special_characters: true), email: Faker::Internet.safe_email, phone_number: Faker::PhoneNumber.cell_phone)
client_12 = Client.create(username: Faker::Internet.username(specifier: 5..8), password: Faker::Internet.password(min_length: 8, mix_case: true, special_characters: true), email: Faker::Internet.safe_email, phone_number: Faker::PhoneNumber.cell_phone)
client_13 = Client.create(username: Faker::Internet.username(specifier: 5..8), password: Faker::Internet.password(min_length: 8, mix_case: true, special_characters: true), email: Faker::Internet.safe_email, phone_number: Faker::PhoneNumber.cell_phone)
client_14 = Client.create(username: Faker::Internet.username(specifier: 5..8), password: Faker::Internet.password(min_length: 8, mix_case: true, special_characters: true), email: Faker::Internet.safe_email, phone_number: Faker::PhoneNumber.cell_phone)
client_15 = Client.create(username: Faker::Internet.username(specifier: 5..8), password: Faker::Internet.password(min_length: 8, mix_case: true, special_characters: true), email: Faker::Internet.safe_email, phone_number: Faker::PhoneNumber.cell_phone)




# #creating nail techs
nail_tech_1 = NailTechnician.create(name: Faker::Name.name, skill_set: "manicures, fill ins and gel")
nail_tech_2 = NailTechnician.create(name: Faker::Name.name, skill_set: "manicures and pedicures")
nail_tech_3= NailTechnician.create(name: Faker::Name.name, skill_set: "manicures and nail design")
nail_tech_4 = NailTechnician.create(name: Faker::Name.name, skill_set: "manicures and messages ")
nail_tech_5= NailTechnician.create(name: Faker::Name.name, skill_set: "pedicures and messages")



#creating appointments
10.times{ Appointment.create(client: Client.all.sample, nail_technician: NailTechnician.all.sample, day: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :morning, format: :short))}





#  #creating services
 nail_srvc_1 = NailService.create(nail_service_type: "manicures", nail_technician: NailTechnician.all.sample)
 nail_srvc_2 = NailService.create(nail_service_type: "pedicures", nail_technician: NailTechnician.all.sample)
 nail_srvc_3 = NailService.create(nail_service_type: "nail design", nail_technician: NailTechnician.all.sample)
 nail_srvc_4 = NailService.create(nail_service_type: "gel", nail_technician: NailTechnician.all.sample)
 nail_srvc_5 = NailService.create(nail_service_type: "fill ins", nail_technician: NailTechnician.all.sample)

 #creating store
 nailtopica = Store.create(name: "Nailtopica", address: "123 Bellmont Drive", phone_number: "(917) 123 - 5555", store_hours: "9 to 5")


# require faker

# #for date and time data
# Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short)

# #names of Technicians and clients?
# Faker::Name.name

# #for phone numbers
# Faker::PhoneNumber.phone_number

# store1 = Store.create(name: "Silver Salon", address: "220 E 52nd", phone_number: "(646)222-3456", store_hours: "9am-7pm")
# client1 = Client.create(username: "bella", password: "abc123", email: "bella04@yahoo.com", phone_number: "(415)941-8101", store_id: store1.id)
# nailtech1 = NailTechnician.create(name: "Annie", skill_set: "full", store_id: store1.id)
# nailservices1 = NailService.create(type_of_service: "manicure", nail_technician_id: nailtech1.id)
# appointment1 = Appointment.create(client_id: client1.id, nail_technician_id: nailtech1.id, day: "Wednesday", time: "3pm")
puts "Hello world!"