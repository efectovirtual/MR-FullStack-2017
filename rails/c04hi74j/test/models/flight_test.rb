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

require 'test_helper'

class FlightTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
