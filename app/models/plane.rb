# == Schema Information
#
# Table name: planes
#
#  id         :integer          not null, primary key
#  column     :integer
#  row        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Plane < ApplicationRecord
  has_many :flights
end
