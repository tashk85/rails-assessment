class QuotesController < ApplicationController
    def index
        render plain: "This will show all quotes"
    end

    def show
        render plain: "This will show a specific quote"
    end

    def new
        render plain: "This will show a new quote form"
    end

    def edit
        render plain: "This will show the edit quote form"
    end
end