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

class Arrival < ActiveRecord::Base
  belongs_to :flight
  has_one :airline, through: :flight

  enum status: { on_time: 0 , delayed: 1 , landing: 2, landed: 3 }

  def str_status
    { on_time: "A Tiempo", delayed: "Demorado", landing: "Aterrizando", landed: "Aterrizó" }[status.to_sym]
  end
end
