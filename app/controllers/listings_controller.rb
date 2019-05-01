class ListingsController < ApplicationController
    def index
    end

    def show
    end

    def new
    end

    def edit
    end

    def create
        #create new listing
        @listing = current_user.listings.create(listing_params)
        
        if @listing.errors.any?
            # set_breeds_and_sexes
            render "new"
        else
            redirect_to listings_path
        end
    end



    private

    def listing_params
        params.require(:listing).permit(:title, :description, :budget, :due_date, :file)
    end
end