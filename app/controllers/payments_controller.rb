class PaymentsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def stripe
        user_id = params[:data][:object][:client_reference_id]
        @name = params[:data][:object][:name]
        payment_id = params[:data][:object][:payment_intent]
        @payment = Stripe::PaymentIntent.retrieve(payment_id)
        @listing_id = payment.metadata.listing_id
        p "quote id " + name
        p "user id " + user_id
        p "listing id " + listing_id
        render json: ""

        @job = Job.create(
            listing_id: @listing_id,
            quote_id: @name,
            printer_id: @name.printer_id,
            status: false,
            stripe_transaction_id: @payment,
        )
        p params
    end

    def success
    end

end