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

if Listing.count == 0
    listings = []
    count = 0
    
    for i in 2..11
        if User.find(i).user_type == "designer"
            listing = Listing.create(
                user_id: User.find(i).id,
                description: Faker::TvShows::HowIMetYourMother.catch_phrase,
                budget: Random.rand(100..500).to_f,
                due_date: Faker::Date.forward(Random.rand(1..14)),
                has_job: false,
                )
                listings.push(listing)
                puts "Created listing for user_id #{i}"
        end
        count += 1
    end
    puts "Successfully created #{count} listings"
end
