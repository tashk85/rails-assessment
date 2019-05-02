class ListingsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_listing, only: [:show, :edit, :update]
    before_action :authorize_user, only: [:new, :create, :edit, :update]
   
    def index
        if current_user.user_type == "printer"
            @listings = Listing.all
        else
            @listings = User.find(current_user.id).listings
        end
    end

    def show
        id = params[:id]
        @listing = Listing.find(id)
    end

    def new
        # @listing = Listing.new
    end

    def update
        # updates the listing
        @listing = Listing.find(params[:id])
        #if the paramaters have been changed:
        if @listing.update(listing_params)
            redirect_to(@listing)
        else
            render :edit
        end
    end

    def edit
        # shows form for editing an existing quote
        @listing = Listing.find(params[:id])
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

    def set_listing
        id = params[:id]
        @listing = Listing.find(id)
    end

    def authorize_user
        if current_user.user_type == "printer"
            redirect_to listings_path
        end
    end

    def listing_params
        params.require(:listing).permit(:title, :description, :budget, :due_date)
    end
end