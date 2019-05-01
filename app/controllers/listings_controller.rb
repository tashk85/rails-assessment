class ListingsController < ApplicationController
    def index
        @listings = Listing.all
    end

    def show
        id = params[:id]
        @listing = Listing.find(id)
    end

    def new
        # @listing = Listing.new
    end

    def edit
    end

    def create
        #create new listing
        # @listing = current_user.listings.create(listing_params))
        @listing = Listing.create(
            user_id: current_user.id,
            description: params[:description],
            budget: params[:budget],
            due_date: params[:due_date],
            has_job: false,
            created_at: params[:created_at]
        )
        
        if @listing.errors.any?
            render "new"
        else
            redirect_to listings_path
        end
    end



    private

    def listing_params
        # params.require(:listing).permit(:title, :description, :budget, :due_date)
    end
end