User.create!(
             name: "Patty",
             email: "patty@gmail.com",
             password: "password",
             password_confirmation: "password"
            )

Temptation.create!(
                    name: "coffee",
                    cost: 5,
                    sunday: true,
                    monday: true,
                    tuesday: true,
                    wednesday: true,
                    thursday: true,
                    friday: true,
                    saturday: true,
                    user_id: 1
                  )

Temptation.create!(
                    name: "lunch",
                    cost: 15,
                    sunday: true,
                    monday: true,
                    tuesday: true,
                    wednesday: true,
                    thursday: true,
                    friday: true,
                    saturday: true,
                    user_id: 1
                    )

Temptation.create!(
                    name: "uber_morning",
                    cost: 25,
                    sunday: true,
                    monday: true,
                    tuesday: true,
                    wednesday: true,
                    thursday: true,
                    friday: true,
                    saturday: true,
                    user_id: 1
                    )

Temptation.create!(
                    name: "uber_night",
                    cost: 30,
                    sunday: true,
                    monday: true,
                    tuesday: true,
                    wednesday: true,
                    thursday: true,
                    friday: true,
                    saturday: true,
                    user_id: 1
                    )

Goal.create!(
             name: "wedding",
             start: "2019-2-26",
             end: "2020-2-26",
             dollar_amount: 20000,
             user_id: 1
             )

Goal.create!(
             name: "New_Zealand",
             start: "2019-2-26",
             end: "2020-3-1",
             dollar_amount: 3000,
             user_id: 1
            )

Goal.create!(
             name: "car",
             start: "2019-2-26",
             end: "2024-5-15",
             dollar_amount: 4000,
             user_id: 1
             )
