# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  has_and_belongs_to_many :flights
  has_many :flight_users
  has_many :reservations, through: :flight_users, source: :flight
end
