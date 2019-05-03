class RegistrationsController < Devise::RegistrationsController
    def new
      super
    end
  
    def create
      # byebug
      # add custom create logic here
      super
      if current_user != nil
        # if current_user.user_type == 'printer'
          
            # redirect to custom printer info here instead
            
      end
        
    end

    def custom
    end
        

  
    def update
      super
    end
  end 