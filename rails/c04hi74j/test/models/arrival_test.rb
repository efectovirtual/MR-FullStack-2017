# == Schema Information
#
# Table name: arrivals
#
#  id         :integer          not null, primary key
#  flight_id  :integer
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  date       :date
#

require 'test_helper'

class ArrivalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
