# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

if User.count == 0
    (1..10).each do |i|
      user = User.new(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        phone: Faker::PhoneNumber.phone_number,
        email: Faker::Internet.email,
        postcode: Faker::Address.postcode,
        user_type: Random.rand(0..1),
        password: "test",
        password_confirmation: "test"
      )
      user.save!(validate: false)
        p "Created user #{i}"
        p user
    end
   end

if Listing.count == 0
    listings = []
    count = 0
    
    for i in 1..10
        if User.find(i).user_type == "designer"
            listing = Listing.new(
                user_id: User.find(i).id,
                description: Faker::TvShows::HowIMetYourMother.catch_phrase,
                budget: Random.rand(100..500).to_f,
                due_date: Faker::Date.forward(Random.rand(1..14)),
                has_job: false,
                design_file: File.open(Rails.root + "app/assets/images/cobra-48132_1280.png")
                )

                count += 1

                listing.save!(validate: false)
                puts "Created listing for user_id #{i}"
        end
        
    end
    puts "Successfully created #{count} listings."
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


    for i in 1..10
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

    puts "Successfully created #{count} printers"


end

if Quote.count == 0
    quotes = []
    count = 0
    
    for i in 1..10
        quote = Quote.create(
            printer_id: Random.rand(Printer.first.id..Printer.last.id),
            listing_id: Random.rand(Listing.first.id..Listing.last.id),
            has_job: false,
            total_price: Random.rand(100..500).to_f,
            job_size: Random.rand(5..200),
            turnaround_time: Faker::Date.forward(Random.rand(1..14))
            )
            quotes.push(quote)
            puts "Created quote #{i}"

        count +=1
    end
    puts "Successfully created #{count} quotes."
end

if Job.count == 0
    count = 0
    jobs = []
    #loop through listings
    for i in 1..Listing.count
        current_listing = Listing.find(i)
        #if a quote exists
        if current_listing.quotes.count > 0
            # make a job using the first quote on the listing, then exit loop
            # Job.create(listing_id:2, printer_id:2, quote_id:4, status:false, stripe_transaction_id:123)
            Job.create(
            listing_id: current_listing.id,
            printer_id: current_listing.quotes.first.printer_id,
            quote_id: current_listing.quotes.first.id,
            status: false,
            stripe_transaction_id: Random.rand(1000..5000),
            )
            #set the job status to true on the listing and quote table
            current_listing.update(has_job: true)
            current_listing.quotes.first.update(has_job: true)

        
            puts "Created job #{i}"
        end

        
    count +=1
        

    end

    puts "Successfully created #{count} jobs."
end