class NailTechnician < ApplicationRecord
    has_many :appointments, dependent: :destroy
    has_many :clients, through: :appointments
    has_many :services
   
end
