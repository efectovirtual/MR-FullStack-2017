module DeparturesHelper
  def departure_class(departure)
    "danger" if departure.delayed?
  end
end
