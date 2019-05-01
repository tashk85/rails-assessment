class ListingsController < ApplicationController
    def index
        render plain: "This will show all listings"
    end

    def show
        render plain: "This will show a specific listing"
    end

    def new
        render plain: "This will show a new listing form"
    end

    def edit
        render plain: "This will show the edit listing form"
    end
end