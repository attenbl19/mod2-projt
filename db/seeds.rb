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
Nail_Service.destroy_all
Nail_Technician.destroy_all
Store.destroy_all



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
nail_tech_1 = Nail_Technician.create(name: Faker::Name.name, skill_set: "manicures, fill ins and gel")
nail_tech_2 = Nail_Technician.create(name: Faker::Name.name, skill_set: "manicures and pedicures")
nail_tech_3= Nail_Technician.create(name: Faker::Name.name, skill_set: "manicures and nail design")
nail_tech_4 = Nail_Technician.create(name: Faker::Name.name, skill_set: "manicures and messages ")
nail_tech_5= Nail_Technician.create(name: Faker::Name.name, skill_set: "pedicures and messages")



#creating appointments
appointment_1 = Appointment.create(client: client_5, nail_technician_id: nail_technician_5, date: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :all))
appointment_2 = Appointment.create(client: client_8, nail_technician_id: nail_technician_3, date: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :all))
appointment_3 = Appointment.create(client: client_1, nail_technician_id: nail_technician_1, date: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :all))
appointment_4 = Appointment.create(client: client_13, nail_technician_id: nail_technician_4, date: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :all))
appointment_5 = Appointment.create(client: client_6, nail_technician_id: nail_technician_2, date: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :all))
appointment_6 = Appointment.create(client: client_2, nail_technician_id: nail_technician_1, date: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :all))
appointment_7 = Appointment.create(client: client_11, nail_technician_id: nail_technician_2, date: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :all))
appointment_8 = Appointment.create(client: client_15, nail_technician_id: nail_technician_4, date: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :all))
appointment_9 = Appointment.create(client: client_3, nail_technician_id: nail_technician_5, date: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :all))
appointment_10 = Appointment.create(client: client_7, nail_technician_id: nail_technician_3, date: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :all))
appointment_11 = Appointment.create(client: client_14, nail_technician_id: nail_technician_2, date: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :all))
appointment_12 = Appointment.create(client: client_10, nail_technician_id: nail_technician_4, date: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :all))
appointment_13 = Appointment.create(client: client_4, nail_technician_id: nail_technician_1, date: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :all))
appointment_14 = Appointment.create(client: client_9, nail_technician_id: nail_technician_5, date: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :all))
appointment_15 = Appointment.create(client: client_12, nail_technician_id: nail_technician_3, date: Faker::Date.forward(days: 21), time: Faker::Time.forward(days: 21, period: :all))



 #creating services
 manicures = Nail_Service.create(nail_service_type: "manicures")
 pedicures = Nail_Service.create(nail_service_type: "pedicures")
 nail_design = Nail_Service.create(nail_service_type: "nail design")
 gel = Nail_Service.create(nail_service_type: "gel")
 fill_ins = Nail_Service.create(nail_service_type: "fill ins")

 

 #creating store
 bellas_nail_salon = Store.create(anem: "Bella's Nail Salon", address: "", phone_number: "9917) 123 - 5555", store_hours: "9 to 5")







