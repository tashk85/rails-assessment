class QuotesController < ApplicationController
    def index
        #shows all quotes
        @quotes = Quote.all
    end

    def show
        # view a single quote
        id = params[:id]
        @quote = Quote.find(id)
    end

    def create
        # create new quote for a listing
        if current_user.user_type == "printer"
            byebug
            Quote.create(printer_id: Printer.find_by_user_id(current_user.id).id,listing_id: params[:quote][:listing_id], total_price: params[:quote][:total_price], job_size: params[:quote][:job_size], turnaround_time: params[:quote][:turnaround_time], has_job: false)

        end

        # Quote.create(
        #     printer_id: Printer.first, 
        #     listing_id: 1,
        #     total_price: 2,
        #     job_size: 3,
        #     turnaround_time: "2019-05-14",
        #     has_job: false
        # )
        # byebug
        redirect_to quote_path(params[:quote][:listing_id])

        # if @quote.errors.any?
        #     render "new"
        # else
        #     redirect_to quotes_path
        # end
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