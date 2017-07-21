lan = Airline.create(name: 'Lan', logo_url: 'https://s3.amazonaws.com/makeitreal/lan.png')
av = Airline.create(name: 'Avianca', logo_url: 'https://s3.amazonaws.com/makeitreal/avianca.png')
vc = Airline.create(name: 'Viva Colombia', logo_url: 'https://s3.amazonaws.com/makeitreal/vivacolombia.png')

av1 = Flight.create(number: "AV 2210", airline: av)
la1 = Flight.create(number: "LA 2230", airline: lan)
vc1 = Flight.create(number: "VC 876", airline: vc)
av2 = Flight.create(number: "AV 9017", airline: av)
la2 = Flight.create(number: "LA 3001", airline: lan)


Departure.create(flight: av1, status: :took_off, date: "2015-02-01 16:00", gate: 13)
Departure.create(flight: la1, status: :delayed, date: '2015-02-01 16:30', gate: 6)
Departure.create(flight: vc1, status: :boarding, date: '2015-02-01 17:00', gate: 2)
Departure.create(flight: la2, status: :on_gate, date: '2015-02-01 17:27', gate: 5)

Arrival.create(flight: av1, status: :landed, date: '2015-02-01 16:00', gate: 2)
Arrival.create(flight: la1, status: :landing, date: '2015-02-01 16:30', gate: 3)
Arrival.create(flight: vc1, status: :delayed, date: '2015-02-01 16:45', gate: 5)
Arrival.create(flight: la2, status: :on_time, date: '2015-02-01 17:00', gate: 7)