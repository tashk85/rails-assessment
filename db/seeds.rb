# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

if User.count == 0
    users = []
    
    for i in 1..10
    user = User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        phone: Faker::PhoneNumber.phone_number,
        password: Faker::Alphanumeric.alpha(10),
        postcode: Faker::Address.postcode,
        user_type: Random.rand(0..1),
        )
        users.push(user)
        puts "Created #{i} users"
    end
end
