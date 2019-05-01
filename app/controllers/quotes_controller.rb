class QuotesController < ApplicationController
    def index
        #shows all quotes
        @quotes = Quote.all
    end

    def show
        # view a single quotev
        id = params[:id]
        @quote = Quote.find(id)
    end

    def create
        # create new listing
        @quote = current_user.quotes.create(quote_params)
    
        p params
        Quote.create(
            printer_id: params[current_user.id], 
            # listing_id: params[],
            total_price: params[:total_price],
            job_size: params[:job_size],
            turnaround_time: params[:turnaround_time]
        )

        if @quote.errors.any?
            render "new"
        else
            redirect_to quotes_path
        end
    end

    def new
        # shows form for creating a new quote
        @quote = Quote.new
    end

    def edit
        # shows form for editing an existing quote
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

    private
    def quote_params
        params.require(:quote).permit(:total_price, :job_size, :turnaround_time)
        # whitelist of what we will accept
    end
end