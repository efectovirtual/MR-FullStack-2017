# == Schema Information
#
# Table name: departures
#
#  id         :integer          not null, primary key
#  flight_id  :integer
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  date       :date
#

class Departure < ActiveRecord::Base
  belongs_to :flight
  has_one :airline, through: :flight

  enum status: { closed: 0, on_gate: 1, boarding: 2, took_off: 3, delayed: 4 }

  def str_status
    { closed: "Cerrado", on_gate: "En Sala", boarding: "Abordando", took_off: "Despegó", delayed: "Demorado" }[status.to_sym]
  end
end
