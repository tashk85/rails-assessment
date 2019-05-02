class RegistrationsController < Devise::RegistrationsController
    def new
      super
    end
  
    def create
      # byebug
      # add custom create logic here
      super
      if current_user != nil
        p 'There is a user'
        p current_user.user_type
        if current_user.user_type == 'printer'
          Printer.create(user_id: current_user.id, abn: 123, printer_model: "Turbo")
        end
      end
        
    end
        

  
    def update
      super
    end
  end 