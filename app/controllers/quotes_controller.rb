class QuotesController < ApplicationController
    def index
        #shows all quotes
        @quotes = Quote.all


        #make sure there is a listing to reference
       
    end

    def show
        # view a single quote
        id = params[:id]
        @quote = Quote.find(id)
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
                listing_id: params[:quote][:listing_id])
            
            # byebug



        end
        
        if @quote.errors.any?
            p "Found errors"
            # render_with_errors
            # byebug
            redirect_to new_quote_path(listing: params[:quote][:listing_id])
            # render "new", listing: @quote.listing
            # redirect_to new_quote_path(listing: @quote.listing.id, quote: @quote)
            # redirect_to new_quote_path(listing: @quote.listing_id)

        else
            # redirect_to quote_path(@quote.id)
            redirect_to quote_path(@quote.id)


        end
    end

    def render_with_errors
        @quote = params[:quote]
        @listing = params[:listing]
        render 'new'
    end

    def new
        # shows form for creating a new quote
        if @quote == nil


            @quote = Quote.new
            

        end
        @listing = params[:listing]
        #make sure there is a listing to reference
        # if params[:listing] == nil
        #     redirect_to listings_path
        # end
    end

    def my_quotes
        @user_id = current_user.id
        @quotes = Quote.all
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
        params.require(:quote).permit(:total_price, :job_size, :turnaround_time, :printer_id, :listing_id)
        # whitelist of what we will accept
    end
end