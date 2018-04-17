# == Schema Information
#
# Table name: flights
#
#  id          :integer          not null, primary key
#  origin      :string
#  date        :string
#  destination :string
#  plane_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Flight < ApplicationRecord
  belongs_to :plane, :optional => true 
  has_and_belongs_to_many :users
end
