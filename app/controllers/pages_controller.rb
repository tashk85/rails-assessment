class PagesController < ApplicationController
    before_action :authenticate_user!, except: [:index]
    
    def index
    end

    def login
    end

    def signup
    end

    def dashboard
    end
end