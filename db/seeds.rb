User.create!(
             name: "Dylan",
             email: "dylan@gmail.com",
             password: "password",
             password_confirmation: "password"
            )

Temptation.create!(
                    name: "coffee",
                    cost: 5,
                    Sunday: true,
                    Monday: true,
                    Tuesday: true,
                    Wednesday: true,
                    Thursday: true,
                    Friday: true,
                    Saturday: true,
                    user_id: 1
                  )

Temptation.create!(
                    name: "lunch",
                    cost: 15,
                    Sunday: true,
                    Monday: true,
                    Tuesday: true,
                    Wednesday: true,
                    Thursday: true,
                    Friday: true,
                    Saturday: true,
                    user_id: 1
                    )

Temptation.create!(
                    name: "uber_morning",
                    cost: 25,
                    Sunday: true,
                    Monday: true,
                    Tuesday: true,
                    Wednesday: true,
                    Thursday: true,
                    Friday: true,
                    Saturday: true,
                    user_id: 1
                    )

Temptation.create!(
                    name: "uber_night",
                    cost: 30,
                    Sunday: true,
                    Monday: true,
                    Tuesday: true,
                    Wednesday: true,
                    Thursday: true,
                    Friday: true,
                    Saturday: true,
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
