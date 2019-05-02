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
        @printer = Printer.new
    end

    def create

        #create new a new printer model entry
        @printer = Printer.create(
            user_id: current_user.id,
            abn: params[:printer][:abn],
            printer_model: params[:printer][:printer_model]
        )
        redirect_to root_path
        
    end

    private 

    def printer_params
        params.require(:printer).permit(:abn, :printer_model)
    end
end