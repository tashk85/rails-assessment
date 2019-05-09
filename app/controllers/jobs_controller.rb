class JobsController < ApplicationController
    def index 
        @jobs = Job.all
    end

    def show
        id = params[:id]
        @job = Job.find(id)
    end

    def update
        # updates the listing
        @job = Job.find(params[:id])
        if @job.update(status: true, completed_at: Time.now)
            redirect_to job_path(@job)
        end
    end
end 
