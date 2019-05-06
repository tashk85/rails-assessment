class PaymentsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def stripe
        quote_id = params[:data][:object][:client_reference_id]
        
        # check to see if job is already created with this quote id 
        if Job.find_by_quote_id(quote_id)
            # Job.update()
            puts "Update Job"
            # if yes, update job with stripe_transaction_id
        else
            # if no, create job
            puts "Create Job"
        end

        render json: ""

    end

    def success
        @quote = Quote.find(params[:quote_id].to_i)
        
        @job = Job.create(
            listing_id: @quote.listing_id,
            quote_id: params[:quote_id].to_i,
            printer_id: @quote.printer_id,
            status: false,
            # stripe_transaction_id: ,
        )
        # need to update has_job column in listing and quote tables
        Quote.find(@job.quote_id).update(has_job: true)
        Listing.find(@job.listing_id).update(has_job: true)
        byebug
        
    end

end