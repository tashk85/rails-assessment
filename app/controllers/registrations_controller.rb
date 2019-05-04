class RegistrationsController < Devise::RegistrationsController
    def new
      super
    end
  
    def create
      # byebug
      # add custom create logic here
      super
        
    end

    def custom
    end
        

  
    def update
      super
    end
  end 