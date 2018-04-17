class FlightUser < ApplicationRecord
  belongs_to :flight
  belongs_to :user
  validates_uniqueness_of :flight_id, scope: :user_id
end
