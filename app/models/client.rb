class Client < ApplicationRecord
    has_many :appointments dependent: :destroy
    has_many :nail_technicians through: :appointments
    has_secure_password
end
