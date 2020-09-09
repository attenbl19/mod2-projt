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




#creating nail techs
nail_tech_1 = NailTechnician.create(name: Faker::Name.name, skill_set: "manicures, fill ins and gel")
nail_tech_2 = NailTechnician.create(name: Faker::Name.name, skill_set: "manicures and pedicures")
nail_tech_3= NailTechnician.create(name: Faker::Name.name, skill_set: "manicures and nail design")
nail_tech_4 = NailTechnician.create(name: Faker::Name.name, skill_set: "manicures and messages ")
nail_tech_5= NailTechnician.create(name: Faker::Name.name, skill_set: "pedicures and messages")



#creating appointments
appointment_1 = Appointment.create(client: client_5, nail_technician: nail_tech_5, day: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :morning, format: :short))
appointment_2 = Appointment.create(client: client_8, nail_technician: nail_tech_3, day: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :morning, format: :short))
appointment_3 = Appointment.create(client: client_1, nail_technician: nail_tech_1, day: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :morning, format: :short))
appointment_4 = Appointment.create(client: client_13, nail_technician: nail_tech_4, day: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :morning, format: :short))
appointment_5 = Appointment.create(client: client_6, nail_technician: nail_tech_2, day: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :morning, format: :short))
appointment_6 = Appointment.create(client: client_2, nail_technician: nail_tech_1, day: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :morning, format: :short))
appointment_7 = Appointment.create(client: client_11, nail_technician: nail_tech_2, day: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :morning, format: :short))
appointment_8 = Appointment.create(client: client_15, nail_technician: nail_tech_4, day: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :morning, format: :short))
appointment_9 = Appointment.create(client: client_3, nail_technician: nail_tech_5, day: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :morning, format: :short))
appointment_10 = Appointment.create(client: client_7, nail_technician: nail_tech_3, day: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :morning, format: :short))
appointment_11 = Appointment.create(client: client_14, nail_technician: nail_tech_2, day: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :morning, format: :short))
appointment_12 = Appointment.create(client: client_10, nail_technician: nail_tech_4, day: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :morning, format: :short))
appointment_13 = Appointment.create(client: client_4, nail_technician: nail_tech_1, day: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :morning, format: :short))
appointment_14 = Appointment.create(client: client_9, nail_technician: nail_tech_5, day: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :morning, format: :short))
appointment_15 = Appointment.create(client: client_12, nail_technician: nail_tech_3, day: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :morning, format: :short))



 #creating services
 nail_srvc_1 = NailService.create(nail_service_type: "manicures", nail_technician: nail_tech_1)
 nail_srvc_2 = NailService.create(nail_service_type: "pedicures", nail_technician: nail_tech_2)
 nail_srvc_3 = NailService.create(nail_service_type: "nail design", nail_technician: nail_tech_3)
 nail_srvc_4 = NailService.create(nail_service_type: "gel", nail_technician: nail_tech_4)
 nail_srvc_5 = NailService.create(nail_service_type: "fill ins", nail_technician: nail_tech_5)

 #creating store
 bellas_nail_salon = Store.create(name: "Bella's Nail Salon", address: "123 Bellmont Drive", phone_number: "(917) 123 - 5555", store_hours: "9 to 5")







