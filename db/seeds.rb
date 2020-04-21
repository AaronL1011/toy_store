for i in 1..20
    User.create(
        email: Faker::Internet.email ,
        password: Faker::Internet.password
    )

    puts "Created #{i} Users"
end
for i in 2..21
    User.find(id: i).toys.create(
        name: Faker::Cannabis.strain,
        description: Faker::Cannabis.health_benefit,
        date: Faker::Date.in_date_period
    )

    puts "Created #{i-1} Toys"
end