for i in 0..20
    Toy.create(
        name: Faker::Cannabis.strain,
        description: Faker::Cannabis.health_benefit,
        date: Faker::Date.in_date_period,
        user: Faker::FunnyName.name
    )

    puts "Created #{i} records"
end