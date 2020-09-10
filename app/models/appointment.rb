class Appointment < ApplicationRecord
  belongs_to :client 
  belongs_to :nail_technician
end
