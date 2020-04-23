for i in 0..4
    Manufacturer.create(
        name: Faker::Cannabis.brand,
        location: Faker::Address.state 
    )
end

for i in 1..20
    User.create(
        email: Faker::Internet.email,
        password: Faker::Internet.password
    )

    puts "Created #{i} Users"
end
for i in 1..20
        Toy.create(
        name: Faker::Cannabis.strain,
        description: Faker::Cannabis.health_benefit,
        date: Faker::Date.in_date_period,
        user_id: "#{i}",
        manufacturer_id: "#{rand(4)+1}"
    )

    puts "Created #{i} Toys"
end