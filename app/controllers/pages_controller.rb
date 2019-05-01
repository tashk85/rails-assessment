class PagesController < ApplicationController
    def index
        render plain: "Index"
    end

    def login
        render plain: "login"
    end

    def signup
        render plain: "signup"
    end

    def dashboard
        render plain: "dashboard"
    end

    def newuser
        #put into database
    end
end