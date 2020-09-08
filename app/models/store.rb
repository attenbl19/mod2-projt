class Store < ApplicationRecord
    has_many :clients
    has_many :nail_technicians
end
