Movie.create(
  title: "Star Wars",
  runtime: 121,
  summary: "Princess Leia is captured and held hostage by the evil Imperial forces in their effort to take over the galactic Empire. Venturesome Luke Skywalker and dashing captain Han Solo team together with the loveable robot duo R2-D2 and C-3PO to rescue the beautiful princess and restore peace and justice in the Empire.",
  poster_url: "https://image.tmdb.org/t/p/w500/6FfCtAuVAW8XJjZ7eWeLibRLWTw.jpg",
)
Movie.create(
  title: "Pirates of the Caribbean: The Curse of the Black Pearl",
  runtime: 143,
  summary: "Jack Sparrow, a freewheeling 18th-century pirate, quarrels with a rival pirate bent on pillaging Port Royal. When the governor's daughter is kidnapped, Sparrow decides to help the girl's love save her.",
  poster_url: "https://image.tmdb.org/t/p/w500/z8onk7LV9Mmw6zKz4hT6pzzvmvl.jpg",
)
Movie.create(
  title: "The Lord of the Rings: The Fellowship of the Ring",
  runtime: 179,
  summary: "Young hobbit Frodo Baggins, after inheriting a mysterious ring from his uncle Bilbo, must leave his home in order to keep it from falling into the hands of its evil creator. Along the way, a fellowship is formed to protect the ringbearer and make sure that the ring arrives at its final destination: Mt. Doom, the only place where it can be destroyed.",
  poster_url: "https://image.tmdb.org/t/p/w500/6oom5QYQ2yQTMJIbnvbkBL9cHo6.jpg",
)
Report.create(name: "Report for March 29")
Report.create(name: "Report for March 30")

Timeslot.create(movie_id: 1, time_slot: "8:30", theater_number: 1)
Timeslot.create(movie_id: 2, time_slot: "12:30", theater_number: 1)
Timeslot.create(movie_id: 3, time_slot: "8:30", theater_number: 2)
puts "planting"
Sale.create(timeslot_id: 1, report_id: 2, tickets_sold: 3)
Sale.create(timeslot_id: 1, report_id: 1, tickets_sold: 2)
Sale.create(timeslot_id: 1, report_id: 1, tickets_sold: 5)

Sale.create(timeslot_id: 2, report_id: 1, tickets_sold: 4)
Sale.create(timeslot_id: 2, report_id: 1, tickets_sold: 1)
Sale.create(timeslot_id: 2, report_id: 1, tickets_sold: 2)

Sale.create(timeslot_id: 3, report_id: 2, tickets_sold: 4)
Sale.create(timeslot_id: 3, report_id: 2, tickets_sold: 6)
Sale.create(timeslot_id: 3, report_id: 2, tickets_sold: 3)

puts "Seeds planted"
