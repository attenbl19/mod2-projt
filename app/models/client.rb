class Client < ApplicationRecord
    has_many :appointments
    has_many :nail_technicians, through: :appointments
    belongs_to :store
    has_secure_password
end
