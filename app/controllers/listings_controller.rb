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
        attach_file
        #if the parameters have been changed:
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
        @listing = current_user.listings.create(listing_params)
        attach_file
        # @listing = Listing.create(
        #     user_id: current_user.id,
        #     description: params[:description],
        #     budget: params[:budget],
        #     due_date: params[:due_date],
        #     has_job: false,
        #     created_at: params[:created_at],
        #     design_file: params[:design_file]
        # )
        
        if @listing.errors.any?
            render "new"
        else
            redirect_to listing_path(@listing.id)
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
        params.permit(:user_id, :description, :budget, :due_date, :has_job, :design_file)
    end

    def attach_file
        @listing.design_file.attach(params[:design_file])
    end
end