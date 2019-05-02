class PagesController < ApplicationController
    #Authenticate users on all pages except landing page
    before_action :authenticate_user!, except: [:index]

    #Don't run the redirection on the printer info page
    # skip_before_action :check_if_printer, only: [:printer_info, :sign_out]
    
    
    def index
    end


    def dashboard
    end

    def printer_info
    end

    def create
        #create new a new printer model entry
        @printer = Printer.create(
            abn: params[:abn],
            printer_info: params[:printer_info]
            
        )
        redirect_to root_path
        if @listing.errors.any?
            render "new"
        else
            
        end
    end
end