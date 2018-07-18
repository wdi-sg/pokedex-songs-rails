Character.destroy_all

Character.create!([{
            name: "Snoels Noels",
            level: 70,
            ilvl: 375
          },
        {
            name: "Fupuchu Puchu",
            level: 67,
            ilvl: 250
        }])

puts "Created #{Character.count} characters"