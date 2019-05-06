class JobsController < ApplicationController
    def index 
        # render plain: "This will show all jobs"
        @jobs = Job.all
    end

    def show
        # render plain: "This will show a specific job"
        id = params[:id]
        @job = Job.find(id)
    end

    def update
        # updates the listing
        @job = Job.find(params[:id])
        if @job.update(status: true, completed_at: Time.now)
            redirect_to(@job)
        end
    end
end