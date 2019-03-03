User.create!(
             name: "Dylan",
             email: "dylan@gmail.com",
             password: "password",
             password_confirmation: "password",
             goal_title: nil,
             goal_amount: nil,
             goal_start: nil, 
             goal_end: nil
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
