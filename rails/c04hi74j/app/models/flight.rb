# == Schema Information
#
# Table name: flights
#
#  id         :integer          not null, primary key
#  airline_id :integer
#  number     :string(10)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Flight < ActiveRecord::Base
  belongs_to :airline
end
