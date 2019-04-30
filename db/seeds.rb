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


if Printer.count == 0
    printers = []
    count = 0
    @models = [
        "SuperTurbo Mach IV",
        "Pretty Good Printer (TM)",
        "Piece Of Trash Printer",
        "HyperSpace Accellerator 13"
    ]


    for i in 2..11
        if User.find(i).user_type == "printer"
            printer = Printer.create(
                user_id: User.find(i).id,
                abn: Random.rand(100000000..999999999),
                printer_model: @models[Random.rand(0..@models.length)],
                )
                printers.push(printers)
                puts "Created printer entry for user_id #{i}"
                count +=1
        end
    end

    puts "Successfully created #{count} listings"


end





# if Quote.count == 0
#     quotes = []
#     count = 0
    
#     for i in 2..11
#         quote = Quote.create(
#             printer_id: Random.rand(2..11),
#             listing_id: Random.rand(Listing.first.id..Listing.last.id),
#             # Listing.find(Random.rand(Listing.first..Listing.last)),
#             has_job: false,
#             total_price: Random.rand(100..500).to_f,
#             job_size: Random.rand(5..200),
#             turnaround_time: Faker::Date.forward(Random.rand(1..14))
#             )
#             quotes.push(quote)
#             puts "Created quote "

#         count +=1
#     end
#     puts "Successfully created quotes"
# end