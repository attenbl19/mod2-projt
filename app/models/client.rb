class Client < ApplicationRecord
    has_many :appointments, dependent: :destroy
    has_many :nail_technicians, through: :appointments
    #has_secure_password

    def to_s
        appointment.client + " " + appointment.nail_technician + " " + appointment.day + " " + appointment.time
      end
end
