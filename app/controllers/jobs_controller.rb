class JobsController < ApplicationController
    def index 
        @jobs = Job.all
        @user_id = current_user.id

        @amount_of_user_jobs = Job.joins(:listing).where(listings:{user_id: @user_id}).count
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
