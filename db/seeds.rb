# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_ids = []
manufacturer_ids = []

for i in 1..10
    manufacturer = Manufacturer.create(
        name: "Manufacturer#{i}",
        location: "Location#{i}"
    )
    p "Created #{i} manufacturers!"

    manufacturer_ids.push(manufacturer.id)
end


for i in 1..20
   
end