class Vehicle < ActiveRecord::Base
    validates :license_plate, :vehicle_type, presence: true
end
