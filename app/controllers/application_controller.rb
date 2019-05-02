class ApplicationController < ActionController::Base
     protect_from_forgery with: :exception

     before_action :configure_permitted_parameters, if: :devise_controller?
     # before_action :check_for_printer -- if current user is a printer, redirect to custom_printer form
     # byebug
     # before_action :check_if_printer, except: [:index, :printer_info]


    private 

    def check_if_printer
     if current_user != nil
          if current_user.user_type == "printer" && Printer.find_by_id(current_user.id) == nil

               #does user exist in the printer table?
               #if not, redirect them to the info form and then put them in the table
 
               # redirect_to printer_info_path(printer: @printer)
           end
     end
         
    end

     


     protected

          #Whitelist certain signup params
          def configure_permitted_parameters
               devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password, :phone, :postcode, :user_type)}


          end

end