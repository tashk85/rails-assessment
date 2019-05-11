class PagesController < ApplicationController
    #Authenticate users on all pages except landing page
    before_action :authenticate_user!, except: [:index]
    before_action :job_summary, only: [:dashboard]

    #Don't run the redirection on the printer info page
    # skip_before_action :check_if_printer, only: [:printer_info, :sign_out]
    
    
    def index
        if user_signed_in?
            redirect_to dashboard_path
        end

    end

    def dashboard

        @user_id = current_user.id

        #run the printer info check
        if current_user != nil && current_user.user_type == "printer"
            if Printer.find_by_user_id(current_user.id) == nil
                redirect_to printer_info_path
            end
        end

    end

    def printer_info
        @printer = Printer.new
    end

    def create
        #create new a new printer model entry
        if Printer.find_by_user_id(current_user.id) == nil
            @printer = Printer.create(printer_params)
                # user_id: current_user.id,
                # abn: params[:printer][:abn],
                # printer_model: params[:printer][:printer_model]
                
            # )
            
        end

        if @printer.errors.any?
            render "printer_info"
        else
            redirect_to dashboard_path
        end

        
        
        
    end

    private 

    def printer_params
        params.require(:printer).permit(:abn, :printer_model, :user_id)
    end

    def job_summary
        #Determine which quotes have been made into a job by searching the relevant tables
        
        @active_listings = Listing.where(user_id: current_user.id).count

        @listings_count = Listing.all.count

        if current_user.user_type == "printer"
            #return quotes that belong to the user, and the associated job also belong to the user
            @open_quotes = Quote.joins(:printer).where(printers:{user_id:current_user.id}, has_job:false).count
           
            #Check if a quote has been assigned to a job that belongs to another printer

        elsif current_user.user_type == "designer"
            @open_quotes = Quote.joins(:listing).where(listings:{user_id:current_user.id}, has_job:false).count

        else
            #Kick them out if not logged into either type
            redirect_to root_path
        end 

        @completed_jobs = Job.joins(:listing).where(listings: {user_id: current_user.id}).where(jobs: {status: true}).count
    end

end