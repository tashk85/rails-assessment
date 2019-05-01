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
        
    end
end