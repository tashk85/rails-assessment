class RegistrationsController < Devise::RegistrationsController
    def new
      super
    end
  
    def create
      #Add authentication to see if user exists - this needs to be stated because we 
      #have custom signup params(:user_type)

      # if user exists already
        #redirect_to(root) - with error
      #else
        #super


    end

    def custom
    end
        

  
    def update
      super
    end
  end 