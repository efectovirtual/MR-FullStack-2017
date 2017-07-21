module ArrivalsHelper

  def arrival_class(arrival)
    return "danger" if arrival.delayed?
    return "success" if arrival.landed?
  end
end
