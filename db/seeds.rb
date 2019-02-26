Temptation.create!(
                    name: "coffee",
                    cost: 5,
                    # frequency: "1",
                    time: "7:00"
                  )

Temptation.create!(
                    name: "lunch",
                    cost: 15,
                    # frequency: "5",
                    time: "12:00"
                    )

Temptation.create!(
                    name: "uber_morning",
                    cost: 25,
                    # frequency: "5",
                    time: "8:00"
                    )

Temptation.create!(
                    name: "uber_night",
                    cost: 30,
                    # frequency: "5",
                    time: "17:00"
                    )

Goal.create!(
             name: "wedding",
             start: "2019-2-26",
             end: "2020-2-26",
             dollar_amount: 20000
             )

Goal.create!(
             name: "New_Zealand",
             start: "2019-2-26",
             end: "2020-3-1",
             dollar_amount: 3000
            )

Goal.create!(
             name: "car",
             start: "2019-2-26",
             end: "2024-5-15",
             dollar_amount: 4000
             )
