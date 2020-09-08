# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require faker

Client.destroy_all
Appointment.destroy_all
Store.destroy_all
NailService.destroy_all
NailTechnician.destroy_all

# #for date and time data
# Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short)

# #names of Technicians and clients?
# Faker::Name.name

# #for phone numbers
# Faker::PhoneNumber.phone_number

store1 = Store.create(name: "Silver Salon", address: "220 E 52nd", phone_number: "(646)222-3456", store_hours: "9am-7pm")
client1 = Client.create(username: "bella", password: "abc123", email: "bella04@yahoo.com", phone_number: "(415)941-8101", store_id: store1.id)
nailtech1 = NailTechnician.create(name: "Annie", skill_set: "full", store_id: store1.id)
nailservices1 = NailService.create(type_of_service: "manicure", nail_technician_id: nailtech1.id)
appointment1 = Appointment.create(client_id: client1.id, nail_technician_id: nailtech1.id, day: "Wednesday", time: "3pm")