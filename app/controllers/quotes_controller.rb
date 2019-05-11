class QuotesController < ApplicationController
    def index
        #shows all quotes
        @quotes = Quote.all
    end

    def show
        # view a single quote by setting id from params
        id = params[:id]
        @quote = Quote.find(id)

        ### Create stripe session ###

        stripe_session = Stripe::Checkout::Session.create(
            payment_method_types: ['card'],
            client_reference_id: @quote.id,
            customer_email: @quote.listing.user.email,
            line_items: [{
                name: "Quote id: #{@quote.id}",
                description: @quote.listing.description,
                amount: (@quote.total_price * 100).to_i, #stripe works in cents, min. 50 cents
                currency: 'aud',
                quantity: 1,
            }],
            success_url: "https://threedirections.herokuapp.com/payments/success?quote_id=#{@quote.id}", #make these links dynamic
            cancel_url: 'https://threedirections.herokuapp.com/cancel',
        )
        @stripe_session_id = stripe_session.id


        ### Assign quotes to past or active quotes arrays ###

        set_quote_arrays


    end

    def create
    # create new quote for a listing
        if current_user.user_type == "printer"
           
            @quote = Quote.create(
                total_price: params[:quote][:total_price],
                job_size: params[:quote][:job_size],
                turnaround_time: params[:quote][:turnaround_time],
                has_job: false,
                printer_id: params[:quote][:printer_id],
                listing_id: params[:quote][:listing_id]
            )
                
            if @quote.errors.any?
                    @listing = params[:quote][:listing_id].to_i
                    #Reload page with the errors and the listing id as an argument for the quote
                    render "new", listing: @quote[:listing_id]
                    # p "Params after render:\n #{params[:quote]}"
                    # redirect_to new_quote_path(listing: params[:listing_id])
                    
                else
                    redirect_to quote_path(@quote.id)
                end

        end

    end

    def new
        # shows form for creating a new quote
        @quote = Quote.new
    end

    def my_quotes
        @user_id = current_user.id
        @quotes = Quote.all

        #Determine which quotes have been made into a job
        set_quote_arrays

        #Set total quote amounts so we can display a message if it = 0
        @amount_of_user_quotes = @past_quotes.count + @open_quotes.count
    end

    def edit
        # shows form for editing an existing quote,
        #    with the variable for the current quote
        @quote = Quote.find(params[:id])
    end

    def update
        # updates the listing
        @quote = Quote.find(params[:id])
        if @quote.update(quote_params)
            redirect_to(@quote)
        else
            render "edit"
        end
    end

    def destroy
        # deletes a listing
        Quote.find(params[:id]).destroy
        
        redirect_to quotes_path
    end

    private
    def quote_params
        params.require(:quote).permit(:total_price, :job_size, :turnaround_time, :printer_id, :listing_id)
        # whitelist of what we will accept
    end

    def set_quote_arrays
        #Determine which quotes have been made into a job by searching the relevant tables

        if current_user.user_type == "printer"
            #return quotes that belong to the user, and the associated job also belong to the user
            @past_quotes = Quote.joins(:printer).where(printers:{user_id:current_user.id}, has_job:true)
            @open_quotes = Quote.joins(:printer).where(printers:{user_id:current_user.id}, has_job:false)
           
            #Check if a quote has been assigned to a job that belongs to another printer

        elsif current_user.user_type == "designer"
            @past_quotes = Quote.joins(:listing).where(listings:{user_id:current_user.id}, has_job:true)
            @open_quotes = Quote.joins(:listing).where(listings:{user_id:current_user.id}, has_job:false)

        #Kick them out if not logged into either type
        # byebug

        else
            redirect_to root_path
        end 
    end


end