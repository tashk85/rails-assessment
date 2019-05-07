class JobsController < ApplicationController
    def index 
        render plain: "This will show all jobs"
    end

    def show
        render plain: "This will show a specific job"
    end
end