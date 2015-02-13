class Vehicle < ActiveRecord::Base
    validates :license_plate, :vehicle_type, presence: true
    validates :vehicle_type, inclusion: { in: %w(motorcycle car),
    message: "%{value} is not a valid vehicle" }
end
